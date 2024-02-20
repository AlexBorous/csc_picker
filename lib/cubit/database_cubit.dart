import 'dart:convert';
import 'dart:core';
import 'dart:developer';

import 'package:csc_picker/compress/compress.dart';
import 'package:csc_picker/model/place.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:string_similarity/string_similarity.dart';

part 'database_state.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseCubit(this.position) : super(DatabaseState(isar: LocalDB())) {
    init();
  }
  final Position? position;
  void init() async {
    await state.isar.init();
    await state.isar.initPlaces(position);
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

double distanceFromMyLocation(
    {required Position location, required Position mylocation}) {
  double distance = Geolocator.distanceBetween(mylocation.longitude,
          mylocation.latitude, location.longitude, location.latitude) /
      1000;
  return distance;
}

List<Place> sortByDistance(
    {required List<Place> locationlist, required Position position}) {
  // if (!await Geolocator.isLocationServiceEnabled() ||
  //     await Geolocator.checkPermission() == LocationPermission.deniedForever) {
  //   return locationlist;
  // }
  // await Geolocator.requestPermission();
  // make this an empty list by intializing with []
  List<Place> locationListWithDistance = [];

  // associate location with distance
  for (var place in locationlist) {
    final location = Position.fromMap(
      {"latitude": place.latlng!.lat, "longitude": place.latlng!.lon},
    );
    double distance = distanceFromMyLocation(
      location: location,
      mylocation: position,
    );

    locationListWithDistance.add(place.copyWith(
      distance: distance,
    ));
  }
  locationListWithDistance.sort((a, b) {
    return a.distance?.compareTo(b.distance ?? 0) ?? 0;
  });

  return locationListWithDistance;
}
