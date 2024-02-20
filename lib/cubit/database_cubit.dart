import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:csc_picker/compress/compress.dart';
import 'package:csc_picker/model/place.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:string_similarity/string_similarity.dart';

part 'database_state.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseCubit() : super(DatabaseState(isar: LocalDB())) {
    init();
  }
  void init() async {
    await state.isar.init();
    await state.isar.initPlaces();
    if (state.isar.hasData()) {
      log('Data found in database');
      final places = await state.isar.getPlaces();
      emit(state.copyWith(places: [...places]));
    } else {
      log('No data found in database');
    }
  }

  Future<List<Place>> filterPlaces(String query) async {
    if (query.isEmpty) {
      return state.places;
    }
    final places = await state.isar.getPlaces(query: query.toLowerCase());
    emit(state.copyWith(places: [...places]));
    return places;
  }

  @override
  Future<void> close() {
    log('DatabaseCubit close');
    state.isar.dispose();
    return super.close();
  }
}

@pragma('vm:entry-point')
Future<void> appendPlaces(String message) async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [PlaceSchema],
    directory: dir.path,
    name: 'places',
  );
  final encodedPlaces = await rootBundle
      .loadString('packages/csc_picker/lib/assets/places.json.gz');
  final decoded = Compress.decode(encodedPlaces);
  final data = jsonDecode(decoded);
  final places = (data as List).map((e) {
    return Place.fromJson(e);
  }).toList();

  isar.writeTxnSync(() {
    isar.places.putAllSync(((places)));
  });
}

double distanceFromMyLocation(Position location) {
  final mylocation = Position.fromMap(
    {"latitude": 37.9838, "longitude": 23.7275},
  );
  double distance = Geolocator.distanceBetween(mylocation.longitude,
          mylocation.latitude, location.longitude, location.latitude) /
      1000;
  return distance;
}

List<Place> sortByDistance(List<Place> locationlist) {
  // make this an empty list by intializing with []
  List<Place> locationListWithDistance = [];

  // associate location with distance
  for (var place in locationlist) {
    final location = Position.fromMap(
      {"latitude": place.latlng!.lat, "longitude": place.latlng!.lon},
    );
    double distance = distanceFromMyLocation(location);

    locationListWithDistance.add(place.copyWith(
      distance: distance,
    ));
  }
  locationListWithDistance.sort((a, b) {
    return a.distance?.compareTo(b.distance ?? 0) ?? 0;
  });

  return locationListWithDistance;
}
