import 'package:flutter_food_express/data/database_provider.dart';

Future<void> main() async {

  DatabaseProvider databaseProvider = DatabaseProvider();


  await databaseProvider.open();

}