import 'dart:convert';
import 'dart:io';

import 'package:csc_picker/model/select_status_model.dart';

void main() async {
  final json = await File('country.json').readAsString();
  final data = jsonDecode(json) as List;
  print(data.length); // 249

  final countries = data.map((e) {
    return Country.fromJson(e);
  }).toList();
  print(countries.length.toString()); // 249
  File('emoji.json').writeAsStringSync(jsonEncode(countries));
}
