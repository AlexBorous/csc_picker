// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaceCollection on Isar {
  IsarCollection<Place> get places => this.collection();
}

const PlaceSchema = CollectionSchema(
  name: r'Place',
  id: 2865247039579441736,
  properties: {
    r'asciiName': PropertySchema(
      id: 0,
      name: r'asciiName',
      type: IsarType.string,
    ),
    r'code': PropertySchema(
      id: 1,
      name: r'code',
      type: IsarType.string,
    ),
    r'countryName': PropertySchema(
      id: 2,
      name: r'countryName',
      type: IsarType.string,
    ),
    r'distance': PropertySchema(
      id: 3,
      name: r'distance',
      type: IsarType.double,
    ),
    r'emoji': PropertySchema(
      id: 4,
      name: r'emoji',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 5,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'labelEn': PropertySchema(
      id: 6,
      name: r'labelEn',
      type: IsarType.string,
    ),
    r'latlng': PropertySchema(
      id: 7,
      name: r'latlng',
      type: IsarType.object,
      target: r'Coordinates',
    ),
    r'modificationDate': PropertySchema(
      id: 8,
      name: r'modificationDate',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    ),
    r'placeId': PropertySchema(
      id: 10,
      name: r'placeId',
      type: IsarType.string,
    ),
    r'population': PropertySchema(
      id: 11,
      name: r'population',
      type: IsarType.long,
    ),
    r'searchString': PropertySchema(
      id: 12,
      name: r'searchString',
      type: IsarType.string,
    ),
    r'searchWords': PropertySchema(
      id: 13,
      name: r'searchWords',
      type: IsarType.stringList,
    ),
    r'timeZone': PropertySchema(
      id: 14,
      name: r'timeZone',
      type: IsarType.string,
    )
  },
  estimateSize: _placeEstimateSize,
  serialize: _placeSerialize,
  deserialize: _placeDeserialize,
  deserializeProp: _placeDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'asciiName': IndexSchema(
      id: 5680087946986510176,
      name: r'asciiName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'asciiName',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'timeZone': IndexSchema(
      id: -3128481430007503854,
      name: r'timeZone',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'timeZone',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'countryName': IndexSchema(
      id: -1763007470810089281,
      name: r'countryName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'countryName',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'searchWords': IndexSchema(
      id: -8223905966804274419,
      name: r'searchWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'searchWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'Coordinates': CoordinatesSchema},
  getId: _placeGetId,
  getLinks: _placeGetLinks,
  attach: _placeAttach,
  version: '3.1.0+1',
);

int _placeEstimateSize(
  Place object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.asciiName.length * 3;
  bytesCount += 3 + object.code.length * 3;
  {
    final value = object.countryName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.emoji;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.labelEn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.latlng;
    if (value != null) {
      bytesCount += 3 +
          CoordinatesSchema.estimateSize(
              value, allOffsets[Coordinates]!, allOffsets);
    }
  }
  {
    final value = object.modificationDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.placeId.length * 3;
  bytesCount += 3 + object.searchString.length * 3;
  bytesCount += 3 + object.searchWords.length * 3;
  {
    for (var i = 0; i < object.searchWords.length; i++) {
      final value = object.searchWords[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.timeZone.length * 3;
  return bytesCount;
}

void _placeSerialize(
  Place object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.asciiName);
  writer.writeString(offsets[1], object.code);
  writer.writeString(offsets[2], object.countryName);
  writer.writeDouble(offsets[3], object.distance);
  writer.writeString(offsets[4], object.emoji);
  writer.writeLong(offsets[5], object.hashCode);
  writer.writeString(offsets[6], object.labelEn);
  writer.writeObject<Coordinates>(
    offsets[7],
    allOffsets,
    CoordinatesSchema.serialize,
    object.latlng,
  );
  writer.writeString(offsets[8], object.modificationDate);
  writer.writeString(offsets[9], object.name);
  writer.writeString(offsets[10], object.placeId);
  writer.writeLong(offsets[11], object.population);
  writer.writeString(offsets[12], object.searchString);
  writer.writeStringList(offsets[13], object.searchWords);
  writer.writeString(offsets[14], object.timeZone);
}

Place _placeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Place(
    asciiName: reader.readString(offsets[0]),
    code: reader.readString(offsets[1]),
    countryName: reader.readStringOrNull(offsets[2]),
    distance: reader.readDoubleOrNull(offsets[3]),
    emoji: reader.readStringOrNull(offsets[4]),
    labelEn: reader.readStringOrNull(offsets[6]),
    latlng: reader.readObjectOrNull<Coordinates>(
      offsets[7],
      CoordinatesSchema.deserialize,
      allOffsets,
    ),
    modificationDate: reader.readStringOrNull(offsets[8]),
    name: reader.readString(offsets[9]),
    placeId: reader.readString(offsets[10]),
    population: reader.readLongOrNull(offsets[11]),
    timeZone: reader.readString(offsets[14]),
  );
  object.id = id;
  return object;
}

P _placeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readObjectOrNull<Coordinates>(
        offset,
        CoordinatesSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringList(offset) ?? []) as P;
    case 14:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _placeGetId(Place object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _placeGetLinks(Place object) {
  return [];
}

void _placeAttach(IsarCollection<dynamic> col, Id id, Place object) {
  object.id = id;
}

extension PlaceQueryWhereSort on QueryBuilder<Place, Place, QWhere> {
  QueryBuilder<Place, Place, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Place, Place, QAfterWhere> anyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'name'),
      );
    });
  }

  QueryBuilder<Place, Place, QAfterWhere> anyAsciiName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'asciiName'),
      );
    });
  }

  QueryBuilder<Place, Place, QAfterWhere> anyTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'timeZone'),
      );
    });
  }

  QueryBuilder<Place, Place, QAfterWhere> anyCountryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'countryName'),
      );
    });
  }

  QueryBuilder<Place, Place, QAfterWhere> anySearchWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'searchWords'),
      );
    });
  }
}

extension PlaceQueryWhere on QueryBuilder<Place, Place, QWhereClause> {
  QueryBuilder<Place, Place, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameGreaterThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [name],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameLessThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [],
        upper: [name],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameBetween(
    String lowerName,
    String upperName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [lowerName],
        includeLower: includeLower,
        upper: [upperName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameStartsWith(
      String NamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [NamePrefix],
        upper: ['$NamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [''],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameEqualTo(
      String asciiName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'asciiName',
        value: [asciiName],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameNotEqualTo(
      String asciiName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'asciiName',
              lower: [],
              upper: [asciiName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'asciiName',
              lower: [asciiName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'asciiName',
              lower: [asciiName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'asciiName',
              lower: [],
              upper: [asciiName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameGreaterThan(
    String asciiName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'asciiName',
        lower: [asciiName],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameLessThan(
    String asciiName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'asciiName',
        lower: [],
        upper: [asciiName],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameBetween(
    String lowerAsciiName,
    String upperAsciiName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'asciiName',
        lower: [lowerAsciiName],
        includeLower: includeLower,
        upper: [upperAsciiName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameStartsWith(
      String AsciiNamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'asciiName',
        lower: [AsciiNamePrefix],
        upper: ['$AsciiNamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'asciiName',
        value: [''],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> asciiNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'asciiName',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'asciiName',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'asciiName',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'asciiName',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneEqualTo(
      String timeZone) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'timeZone',
        value: [timeZone],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneNotEqualTo(
      String timeZone) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timeZone',
              lower: [],
              upper: [timeZone],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timeZone',
              lower: [timeZone],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timeZone',
              lower: [timeZone],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timeZone',
              lower: [],
              upper: [timeZone],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneGreaterThan(
    String timeZone, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timeZone',
        lower: [timeZone],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneLessThan(
    String timeZone, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timeZone',
        lower: [],
        upper: [timeZone],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneBetween(
    String lowerTimeZone,
    String upperTimeZone, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timeZone',
        lower: [lowerTimeZone],
        includeLower: includeLower,
        upper: [upperTimeZone],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneStartsWith(
      String TimeZonePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timeZone',
        lower: [TimeZonePrefix],
        upper: ['$TimeZonePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'timeZone',
        value: [''],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> timeZoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'timeZone',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'timeZone',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'timeZone',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'timeZone',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'countryName',
        value: [null],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'countryName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameEqualTo(
      String? countryName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'countryName',
        value: [countryName],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameNotEqualTo(
      String? countryName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'countryName',
              lower: [],
              upper: [countryName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'countryName',
              lower: [countryName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'countryName',
              lower: [countryName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'countryName',
              lower: [],
              upper: [countryName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameGreaterThan(
    String? countryName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'countryName',
        lower: [countryName],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameLessThan(
    String? countryName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'countryName',
        lower: [],
        upper: [countryName],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameBetween(
    String? lowerCountryName,
    String? upperCountryName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'countryName',
        lower: [lowerCountryName],
        includeLower: includeLower,
        upper: [upperCountryName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameStartsWith(
      String CountryNamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'countryName',
        lower: [CountryNamePrefix],
        upper: ['$CountryNamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'countryName',
        value: [''],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> countryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'countryName',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'countryName',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'countryName',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'countryName',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementEqualTo(
      String searchWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'searchWords',
        value: [searchWordsElement],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementNotEqualTo(
      String searchWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchWords',
              lower: [],
              upper: [searchWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchWords',
              lower: [searchWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchWords',
              lower: [searchWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchWords',
              lower: [],
              upper: [searchWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementGreaterThan(
    String searchWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'searchWords',
        lower: [searchWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementLessThan(
    String searchWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'searchWords',
        lower: [],
        upper: [searchWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementBetween(
    String lowerSearchWordsElement,
    String upperSearchWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'searchWords',
        lower: [lowerSearchWordsElement],
        includeLower: includeLower,
        upper: [upperSearchWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementStartsWith(
      String SearchWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'searchWords',
        lower: [SearchWordsElementPrefix],
        upper: ['$SearchWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'searchWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterWhereClause> searchWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'searchWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'searchWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'searchWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'searchWords',
              upper: [''],
            ));
      }
    });
  }
}

extension PlaceQueryFilter on QueryBuilder<Place, Place, QFilterCondition> {
  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'asciiName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'asciiName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'asciiName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'asciiName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'asciiName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'asciiName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'asciiName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'asciiName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'asciiName',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> asciiNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'asciiName',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'countryName',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'countryName',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryName',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> countryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryName',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> distanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'distance',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> distanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'distance',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> distanceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> distanceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> distanceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> distanceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'distance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'emoji',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'emoji',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emoji',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emoji',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emoji',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> emojiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emoji',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'labelEn',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'labelEn',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'labelEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'labelEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'labelEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'labelEn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'labelEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'labelEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'labelEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'labelEn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'labelEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> labelEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'labelEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> latlngIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latlng',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> latlngIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latlng',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'modificationDate',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      modificationDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'modificationDate',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modificationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modificationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modificationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modificationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modificationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modificationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modificationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modificationDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> modificationDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modificationDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      modificationDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modificationDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'placeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'placeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> placeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> populationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'population',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> populationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'population',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> populationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> populationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> populationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> populationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'population',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchString',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchString',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      searchWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      searchWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      searchWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchWords',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      searchWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchWords',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'searchWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'searchWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'searchWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'searchWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition>
      searchWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'searchWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> searchWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'searchWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeZone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeZone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeZone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeZone',
        value: '',
      ));
    });
  }

  QueryBuilder<Place, Place, QAfterFilterCondition> timeZoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeZone',
        value: '',
      ));
    });
  }
}

extension PlaceQueryObject on QueryBuilder<Place, Place, QFilterCondition> {
  QueryBuilder<Place, Place, QAfterFilterCondition> latlng(
      FilterQuery<Coordinates> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'latlng');
    });
  }
}

extension PlaceQueryLinks on QueryBuilder<Place, Place, QFilterCondition> {}

extension PlaceQuerySortBy on QueryBuilder<Place, Place, QSortBy> {
  QueryBuilder<Place, Place, QAfterSortBy> sortByAsciiName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asciiName', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByAsciiNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asciiName', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByCountryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByCountryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByLabelEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'labelEn', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByLabelEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'labelEn', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByModificationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modificationDate', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByModificationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modificationDate', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByPlaceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeId', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByPlaceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeId', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortBySearchString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchString', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortBySearchStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchString', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> sortByTimeZoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.desc);
    });
  }
}

extension PlaceQuerySortThenBy on QueryBuilder<Place, Place, QSortThenBy> {
  QueryBuilder<Place, Place, QAfterSortBy> thenByAsciiName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asciiName', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByAsciiNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asciiName', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByCountryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByCountryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByLabelEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'labelEn', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByLabelEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'labelEn', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByModificationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modificationDate', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByModificationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modificationDate', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByPlaceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeId', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByPlaceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeId', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenBySearchString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchString', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenBySearchStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchString', Sort.desc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByTimeZone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.asc);
    });
  }

  QueryBuilder<Place, Place, QAfterSortBy> thenByTimeZoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeZone', Sort.desc);
    });
  }
}

extension PlaceQueryWhereDistinct on QueryBuilder<Place, Place, QDistinct> {
  QueryBuilder<Place, Place, QDistinct> distinctByAsciiName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'asciiName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByCountryName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countryName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByEmoji(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emoji', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByLabelEn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'labelEn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByModificationDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modificationDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByPlaceId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'population');
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctBySearchString(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchString', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctBySearchWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchWords');
    });
  }

  QueryBuilder<Place, Place, QDistinct> distinctByTimeZone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeZone', caseSensitive: caseSensitive);
    });
  }
}

extension PlaceQueryProperty on QueryBuilder<Place, Place, QQueryProperty> {
  QueryBuilder<Place, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Place, String, QQueryOperations> asciiNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'asciiName');
    });
  }

  QueryBuilder<Place, String, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<Place, String?, QQueryOperations> countryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countryName');
    });
  }

  QueryBuilder<Place, double?, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<Place, String?, QQueryOperations> emojiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emoji');
    });
  }

  QueryBuilder<Place, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Place, String?, QQueryOperations> labelEnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'labelEn');
    });
  }

  QueryBuilder<Place, Coordinates?, QQueryOperations> latlngProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latlng');
    });
  }

  QueryBuilder<Place, String?, QQueryOperations> modificationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modificationDate');
    });
  }

  QueryBuilder<Place, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Place, String, QQueryOperations> placeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeId');
    });
  }

  QueryBuilder<Place, int?, QQueryOperations> populationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'population');
    });
  }

  QueryBuilder<Place, String, QQueryOperations> searchStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchString');
    });
  }

  QueryBuilder<Place, List<String>, QQueryOperations> searchWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchWords');
    });
  }

  QueryBuilder<Place, String, QQueryOperations> timeZoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeZone');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CoordinatesSchema = Schema(
  name: r'Coordinates',
  id: -7494960659619875827,
  properties: {
    r'lat': PropertySchema(
      id: 0,
      name: r'lat',
      type: IsarType.double,
    ),
    r'lon': PropertySchema(
      id: 1,
      name: r'lon',
      type: IsarType.double,
    )
  },
  estimateSize: _coordinatesEstimateSize,
  serialize: _coordinatesSerialize,
  deserialize: _coordinatesDeserialize,
  deserializeProp: _coordinatesDeserializeProp,
);

int _coordinatesEstimateSize(
  Coordinates object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _coordinatesSerialize(
  Coordinates object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.lat);
  writer.writeDouble(offsets[1], object.lon);
}

Coordinates _coordinatesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Coordinates(
    lat: reader.readDoubleOrNull(offsets[0]),
    lon: reader.readDoubleOrNull(offsets[1]),
  );
  return object;
}

P _coordinatesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CoordinatesQueryFilter
    on QueryBuilder<Coordinates, Coordinates, QFilterCondition> {
  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> latIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lat',
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> latIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lat',
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> latEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> latGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> latLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> latBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> lonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lon',
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> lonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lon',
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> lonEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> lonGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> lonLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coordinates, Coordinates, QAfterFilterCondition> lonBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension CoordinatesQueryObject
    on QueryBuilder<Coordinates, Coordinates, QFilterCondition> {}
