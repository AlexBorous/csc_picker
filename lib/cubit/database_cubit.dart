import 'dart:convert';
import 'dart:core';

import 'package:csc_picker/compress/compress.dart';
import 'package:csc_picker/model/place.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart' show Position, Geolocator;
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:string_similarity/string_similarity.dart';

part 'database_state.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseCubit({
    required this.timezone,
    this.position,
  }) : super(DatabaseState(isar: LocalDB())) {
    init();
  }
  final String timezone;
  final Position? position;
  void init() async {
    await state.isar.init();
    await state.isar.initPlaces(position);
    if (state.isar.hasData()) {
      debugPrint('Data found in database');
      final places = await state.isar.getPlaces(timezone: timezone);
      emit(state.copyWith(places: [...places]));
    } else {
      debugPrint('No data found in database');
    }
  }

  Future<List<Place>> filterPlaces(String query) async {
    if (query.isEmpty) {
      return state.places;
    }
    final places = await state.isar
        .getPlaces(query: query.toLowerCase(), timezone: timezone);
    emit(state.copyWith(places: [...places]));
    return places;
  }

  @override
  Future<void> close() {
    state.isar.dispose();
    return super.close();
  }
}
