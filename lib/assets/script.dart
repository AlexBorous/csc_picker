import 'package:csc_picker/scripts/refresh.dart';

void main() async {
  print('Refreshing data...');
  refreshData(fileName: 'places.json');
  print('Done');
}
