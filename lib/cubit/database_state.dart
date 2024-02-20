part of 'database_cubit.dart';

@immutable
class DatabaseState {
  const DatabaseState({required this.isar, this.places = const []});
  final DB isar;
  final List<Place> places;

  DatabaseState copyWith({
    DB? isar,
    List<Place>? places,
  }) {
    return DatabaseState(
      isar: isar ?? this.isar,
      places: places ?? this.places,
    );
  }
}

abstract class DB {
  Future<void> init();
  Future<void> dispose();
  Future<bool> insertPlace(Place place);
  Future<bool> insertPlaces(List<Place> places);
  Future<List<Place>> getPlaces({int limit = -1, String query = ''});
  Future<void> initPlaces();
  bool hasData();
  bool isOpen();
  Future<List<Place>> getPlacesByCountry(String country);
  Future<List<Place>> getPlacesByLocation(
      {required double lat, required double lng});
}

class LocalDB extends DB {
  late final Isar isar;

  @override
  Future<void> dispose() async {
    await isar.close(deleteFromDisk: true);
  }

  @override
  bool isOpen() {
    return isar.isOpen;
  }

  @override
  Future<List<Place>> getPlaces({int limit = 10, String query = ''}) async {
    if (query.isEmpty) {
      return isar.places.where().sortByDistance().limit(10).findAll();
    }
    final formattedQuery = Isar.splitWords(query);
    final List<Place> places = List.empty(growable: true);
    for (final word in formattedQuery) {
      final result = await isar.places
          .where()
          .asciiNameStartsWith(word)
          .or()
          .asciiNameEqualTo(word)
          .or()
          .nameStartsWith(word)
          .or()
          .countryNameStartsWith(word)
          .or()
          .searchWordsElementStartsWith(word)
          .limit(10)
          .findAll();
      for (final place in result) {
        if (!places.contains(place)) {
          places.add(place);
        }
      }
    }

    //sort by best match
    places.sort((a, b) {
      final aScore = a.searchString.similarityTo(query);
      final bScore = b.searchString.similarityTo(query);
      return bScore.compareTo(aScore);
    });
    return places;
  }

  @override
  Future<void> initPlaces() async {
    if (hasData()) return;
    final encodedPlaces = await rootBundle
        .loadString('packages/csc_picker/lib/assets/places.json.gz');
    final decoded = Compress.decode(encodedPlaces);
    final data = jsonDecode(decoded);
    final places = (data as List).map((e) {
      return Place.fromJson(e);
    }).toList();
    places..sort((a, b) => b.population!.compareTo(a.population ?? 0));
    await isar.writeTxn(() async {
      isar.places.putAll(sortByDistance(places));
    });
  }

  @override
  Future<List<Place>> getPlacesByCountry(String country) {
    return isar.places.where().countryNameEqualTo(country).findAll();
  }

  @override
  Future<List<Place>> getPlacesByLocation(
      {required double lat, required double lng}) {
    // TODO: implement getPlacesByLocation
    throw UnimplementedError();
  }

  @override
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [PlaceSchema],
      directory: dir.path,
      name: 'places',
    );
  }

  @override
  Future<bool> insertPlace(Place place) async {
    try {
      await isar.writeTxn(() async {
        isar.places.put(place);
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> insertPlaces(List<Place> places) async {
    try {
      await isar.writeTxn(() async {
        isar.places.putAll(places);
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  bool hasData() {
    final data = isar.places.countSync();
    return data > 0;
  }
}

extension ListX on List<Place> {
  List<Place> get removeDuplicates {
    final unique = <Place>[];
    for (final place in this) {
      if (!unique.any(
          (e) => e.name == place.name && e.countryName == place.countryName)) {
        unique.add(place);
      }
    }
    return unique;
  }
}
