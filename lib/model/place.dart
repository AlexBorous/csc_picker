import 'package:isar/isar.dart';

part 'place.g.dart';

@collection
class Place {
  Id id = Isar.autoIncrement;
  final String placeId;
  @Index(caseSensitive: false, type: IndexType.value)
  final String name;
  @Index(caseSensitive: false, type: IndexType.value)
  final String asciiName;
  final String code;
  @Index(caseSensitive: false, type: IndexType.value)
  final String timeZone;
  final int? population;
  final String? modificationDate;
  @Index(caseSensitive: false, type: IndexType.value)
  final String? countryName;
  final String? labelEn;
  final Coordinates? latlng;
  final String? emoji;

  @Index(
    type: IndexType.value,
    caseSensitive: false,
    name: 'searchWords',
  )
  List<String> get searchWords => '$asciiName $countryName'.split(' ');
  String get searchString => searchWords.join(' ');
  Place({
    required this.placeId,
    required this.name,
    required this.asciiName,
    required this.code,
    required this.timeZone,
    this.population,
    this.modificationDate,
    this.countryName,
    this.labelEn,
    this.latlng,
    this.emoji,
  });

  factory Place.fromGeoDB(Map<String, dynamic> json) {
    return Place(
      placeId: json['geoname_id'],
      name: json['name'],
      asciiName: json['ascii_name'] ?? json['name'],
      code: json['country_code'],
      timeZone: json['timezone'],
      population: int.tryParse(json['population']?.toString() ?? ''),
      modificationDate: json['modification_date'],
      countryName: json['cou_name_en'],
      labelEn: json['label_en'],
      latlng: json['coordinates'] != null
          ? Coordinates.fromJson(json['coordinates'])
          : null,
      emoji: json['emoji'],
    );
  }

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      placeId: json['id'],
      name: json['name'],
      asciiName: json['ascii_name'] ?? json['name'],
      code: json['code'],
      timeZone: json['timezone'],
      population: json['population'],
      countryName: json['country_name'],
      modificationDate: json['modification_date'],
      labelEn: json['label_en'],
      latlng: Coordinates.fromJson(json['latlng']),
      emoji: json['emoji'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'ascii_name': asciiName,
      'code': code,
      'timezone': timeZone,
      'id': placeId,
      'population': population,
      'country_name': countryName ?? '',
      'modification_date': modificationDate,
      'label_en': labelEn,
      'latlng': latlng?.toJson() ?? {},
      'emoji': emoji ?? '',
    };
  }

  Place copyWith({
    String? placeId,
    String? name,
    String? asciiName,
    String? code,
    String? timeZone,
    int? population,
    String? modificationDate,
    String? countryName,
    String? labelEn,
    Coordinates? latlng,
    String? emoji,
    double? distance,
  }) {
    return Place(
      placeId: placeId ?? this.placeId,
      name: name ?? this.name,
      asciiName: asciiName ?? this.asciiName,
      code: code ?? this.code,
      timeZone: timeZone ?? this.timeZone,
      population: population ?? this.population,
      modificationDate: modificationDate ?? this.modificationDate,
      countryName: countryName ?? this.countryName,
      labelEn: labelEn ?? this.labelEn,
      latlng: latlng ?? this.latlng,
      emoji: emoji ?? this.emoji,
    );
  }

  @override
  String toString() {
    return '$name, $labelEn $emoji';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Place &&
        other.placeId == placeId &&
        other.name == name &&
        other.asciiName == asciiName &&
        other.code == code &&
        other.timeZone == timeZone &&
        other.population == population &&
        other.modificationDate == modificationDate &&
        other.countryName == countryName &&
        other.labelEn == labelEn &&
        other.latlng == latlng &&
        other.emoji == emoji;
  }

  @override
  int get hashCode {
    return placeId.hashCode ^
        name.hashCode ^
        asciiName.hashCode ^
        code.hashCode ^
        timeZone.hashCode ^
        population.hashCode ^
        modificationDate.hashCode ^
        countryName.hashCode ^
        labelEn.hashCode ^
        latlng.hashCode ^
        emoji.hashCode;
  }
}

@embedded
class Coordinates {
  final double? lat;
  final double? lon;
  Coordinates({this.lat, this.lon});
  Map<String, double> toJson() {
    return {
      'lat': lat ?? 0.0,
      'lon': lon ?? 0.0,
    };
  }

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      lat: double.tryParse(json['lat']?.toString() ?? '') ?? 0.0,
      lon: double.tryParse(json['lon']?.toString() ?? '') ?? 0.0,
    );
  }
  @override
  String toString() {
    return 'Coordinates{lat: $lat, lon: $lon}';
  }
}
