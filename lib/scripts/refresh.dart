import 'dart:convert';
import 'dart:io';

import 'package:csc_picker/compress/compress.dart';
import 'package:csc_picker/model/place.dart';

void refreshData({String? fileName}) async {
  final _fileName = fileName ?? 'data.json';
  final encode = await File(_fileName).readAsString();
  final compressed = Compress.encode(encode);
  await File('$_fileName.gz').writeAsString(compressed);
  final json = await File('$_fileName.gz').readAsString();
  final decoded = Compress.decode(json);
  final data = jsonDecode(decoded);
  final countries = (data as List).map((e) {
    return Place.fromJson(e);
  }).toList();
  assert(countries.isNotEmpty);
}

Future<List<Place>> decodeCompressedData({String? fileName}) async {
  final _fileName = fileName ?? 'data.json';
  final json = await File('$_fileName.gz').readAsString();
  final decoded = Compress.decode(json);
  final data = jsonDecode(decoded);
  final countries = (data as List).map((e) {
    return Place.fromJson(e);
  }).toList();
  assert(countries.isNotEmpty);
  return countries;
}
