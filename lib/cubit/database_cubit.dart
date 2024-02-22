import 'dart:convert';
import 'dart:core';
import 'dart:developer';

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
      debugPrint('Data already found in database from init');
      final places = await state.isar.getPlaces(timezone: timezone);
      emit(state.copyWith(places: [...places], reccomendedPlaces: [...places]));
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
      emit(state.copyWith(places: [...places], reccomendedPlaces: [...places]));
    } else {
      debugPrint('No data found in database');
      await state.isar.initPlaces();
      final places = await state.isar.getPlaces(timezone: timezone);
      emit(state.copyWith(places: [...places], reccomendedPlaces: [...places]));
    }
  }

  Future<List<Place>> filterPlaces(String query) async {
    if (query.isEmpty) {
      log('Query is empty');
      return state.reccomendedPlaces;
    }
    final places = await state.isar
        .getPlaces(query: query.toLowerCase(), timezone: timezone);
    emit(state.copyWith(places: [...places]));
    return places;
  }

  @override
  Future<void> close() async {
    if (state.isar.isOpen()) {
      log('Closing database');
      await state.isar.dispose();
    }
    return super.close();
  }

  @override
  void onError(Object error, StackTrace stackTrace) async {
    debugPrint('Error: $error');
    await state.isar.dispose();
    super.onError(error, stackTrace);
  }
}

class ComputeData {
  ComputeData(this.encodedPlaces, this.rootIsolateToken);

  final String encodedPlaces;
  final RootIsolateToken rootIsolateToken;
}
