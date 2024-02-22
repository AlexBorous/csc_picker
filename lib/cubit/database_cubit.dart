import 'dart:convert';
import 'dart:core';

import 'package:csc_picker/compress/compress.dart';
import 'package:csc_picker/model/place.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:string_similarity/string_similarity.dart';

part 'database_state.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseCubit({
    required this.timezone,
  }) : super(DatabaseState(isar: LocalDB())) {
    init();
  }
  final String timezone;

  void init() async {
    await state.isar.init();
    if (state.isar.hasData()) {
      return;
    }
    final encodedPlaces = await rootBundle
        .loadString('packages/csc_picker/lib/assets/places.json.gz');
    final rootIsolateToken = RootIsolateToken.instance!;
    final computeData = ComputeData(encodedPlaces, rootIsolateToken);

    await compute(appendPlaces, computeData);
    // await state.isar.initPlaces();
    if (state.isar.hasData()) {
      debugPrint('Data found in database');
      final places = await state.isar.getPlaces(timezone: timezone);
      emit(state.copyWith(places: [...places]));
    } else {
      debugPrint('No data found in database');
      await state.isar.initPlaces();
      final places = await state.isar.getPlaces(timezone: timezone);
      emit(state.copyWith(places: [...places]));
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
    if (state.isar.isOpen()) {
      state.isar.dispose();
    }
    return super.close();
  }
}

class ComputeData {
  ComputeData(this.encodedPlaces, this.rootIsolateToken);

  final String encodedPlaces;
  final RootIsolateToken rootIsolateToken;
}
