import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_food_express/data/config.dart';

class DatabaseProvider{

  // A classe Database rpresenta a conexão realizada com o banco de dados
  // late precisa de um comando para criar a instancia
  late Database _database;

}
/// Abrir conexão com o banco

// Método assimcromo
void open() async {

/// passando o caminho do banco de dados
// Por ser um parametro que retorna algo posteriormente precisa colocar a palavra await
  String path = join(await getDatabasesPath(),"foodexpress.db");
  _database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) => _create 
  );

}

void _create(Database db, int version){
  db.execute(Config.sql);
}