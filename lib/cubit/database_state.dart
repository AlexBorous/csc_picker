part of 'database_cubit.dart';

@immutable
class DatabaseState {
  const DatabaseState({
    required this.isar,
    this.places = const [],
    this.reccomendedPlaces = const [],
  });
  final DB isar;
  final List<Place> places;
  final List<Place> reccomendedPlaces;
  DatabaseState copyWith({
    DB? isar,
    List<Place>? places,
    List<Place>? reccomendedPlaces,
  }) {
    return DatabaseState(
      isar: isar ?? this.isar,
      places: places ?? this.places,
      reccomendedPlaces: reccomendedPlaces ?? this.reccomendedPlaces,
    );
  }
}

abstract class DB {
  Future<void> init();
  Future<void> dispose();
  Future<List<Place>> getPlaces(
      {int limit = -1, String query = '', required String timezone});
  Future<void> initPlaces();
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
  Future<List<Place>> getPlaces({
    required String timezone,
    int limit = 10,
    String query = '',
  }) async {
    if (query.isEmpty) {
      return isar.places
          .where()
          .timeZoneEqualTo(timezone)
          .sortByPopulationDesc()
          .limit(limit)
          .findAll();
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
          .sortByPopulationDesc()
          .limit(limit)
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

    await isar.writeTxn(() async {
      isar.places.putAll(places);
    });
  }

  @override
  Future<void> init() async {
    if (Isar.getInstance('places') != null) {
      isar = Isar.getInstance('places')!;
    }
    debugPrint('Initializing database');
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [PlaceSchema],
      directory: dir.path,
      name: 'places',
      maxSizeMiB: 100,
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

Future<void> appendPlaces(ComputeData computeData) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(
      computeData.rootIsolateToken);
  final directory = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [PlaceSchema],
    directory: directory.path,
    name: 'places',
    maxSizeMiB: 100,
  );

  final decoded = Compress.decode(computeData.encodedPlaces);
  final data = jsonDecode(decoded);
  final places = (data as List).map((e) {
    return Place.fromJson(e);
  }).toList();

  isar.writeTxnSync(() {
    isar.places.putAllSync(places);
  });
  await isar.close();
}
