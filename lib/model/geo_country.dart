class GeoCountry {
  final String id;
  final String name;
  final String code;
  final String timeZone;
  final int? population;
  final String? modificationDate;
  final String? labelEn;
  final Map<String, double>? latlng;
  GeoCountry({
    required this.id,
    required this.name,
    required this.code,
    required this.timeZone,
    this.population,
    this.modificationDate,
    this.labelEn,
    this.latlng,
  });

  factory GeoCountry.fromJson(Map<String, dynamic> json) {
    return GeoCountry(
        id: json['geoname_id'],
        name: json['name'],
        code: json['country_code'],
        timeZone: json['timezone'],
        population: int.tryParse(json['population']?.toString() ?? ''),
        modificationDate: json['modification_date'],
        labelEn: json['label_en'],
        latlng: json['coordinates']?.cast<String, double>());
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'timezone': timeZone,
      'id': id,
      'population': population,
      'modification_date': modificationDate,
      'label_en': labelEn,
      'latlng': latlng,
    };
  }
}
