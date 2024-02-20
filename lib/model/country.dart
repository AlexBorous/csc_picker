class Country {
  String? name;
  String? emoji;
  String? code;

  Country({this.name, this.emoji, this.code});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    emoji = json['emoji'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['emoji'] = this.emoji;
    data['code'] = this.code;
    return data;
  }

  Country copyWith({String? name, String? emoji, String? code}) {
    return Country(
      name: name ?? this.name,
      emoji: emoji ?? this.emoji,
      code: code ?? this.code,
    );
  }
}

class Region {
  int? id;
  String? name;
  int? countryId;
  List<City>? city;

  Region({this.id, this.name, this.countryId, this.city});

  Region.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    countryId = json['country_id'];
    if (json['city'] != null) {
      city = [];
      json['city'].forEach((v) {
        city!.add(new City.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['country_id'] = this.countryId;
    if (this.city != null) {
      data['city'] = this.city!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class City {
  int? id;
  String? name;
  int? stateId;

  City({this.id, this.name, this.stateId});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    stateId = json['state_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['state_id'] = this.stateId;
    return data;
  }
}
