import 'dart:io';

import 'package:csc_picker/compress/compress.dart';

void main() async {
  Compress compress = Compress();
  final json = await File('data.json.gz').readAsString();
  final decoded = compress.decode(json);
  print(decoded);
}
