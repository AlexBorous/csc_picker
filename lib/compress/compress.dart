import 'dart:convert';
import 'dart:io';

class Compress {
  String encode(String json) {
    final enCodedJson = utf8.encode(json);
    final gZipJson = gzip.encode(enCodedJson);
    final base64Json = base64.encode(gZipJson);
    return base64Json;
  }

  String decode(String data) {
    final decodedData = base64.decode(data);
    final gZipJson = gzip.decode(decodedData);
    final json = utf8.decode(gZipJson);
    return json;
  }
}
