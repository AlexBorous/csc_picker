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
  Future<List<Place>> getPlaces({int limit = -1, String query = ''});
  Future<void> initPlaces(Position? position);
  bool hasData();
  bool isOpen();
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
          .sortByDistance()
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
  Future<void> initPlaces(Position? position) async {
    if (hasData()) return;
    final encodedPlaces = await rootBundle
        .loadString('packages/csc_picker/lib/assets/places.json.gz');
    final decoded = Compress.decode(encodedPlaces);
    final data = jsonDecode(decoded);
    final places = (data as List).map((e) {
      return Place.fromJson(e);
    }).toList();
    if (position != null) {
      final sortedPlaces =
          sortByDistance(locationlist: places, position: position);
      await isar.writeTxn(() async {
        isar.places.putAll(sortedPlaces);
      });
    } else {
      await isar.writeTxn(() async {
        isar.places.putAll(places);
      });
    }
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
  bool hasData() {
    return isar.places.countSync() > 0;
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
