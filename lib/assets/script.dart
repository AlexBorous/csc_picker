import 'package:csc_picker/scripts/refresh.dart';

void main() async {
  // final encodedGeoDB = await File('geonames.json').readAsString();
  // final geoData = jsonDecode(encodedGeoDB) as List;
  // final places = await decodeCompressedData(fileName: 'places.json');

  // for (var geo in geoData) {
  //   final place = Place.fromGeoDB(geo);
  //   if (places.any((element) => element.name == place.name)) {
  //     var indexWhere =
  //         places.indexWhere((element) => element.name == place.name);
  //     places[indexWhere] = places[indexWhere].copyWith(
  //       asciiName: place.asciiName,
  //     );
  //   }
  // }
  // await File('places.json').writeAsString(jsonEncode(places));
  refreshData(fileName: 'places.json');
  print('Done');
}
