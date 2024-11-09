import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDataBase {
  Future<Database> initDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'MyDatabase.db');
    Database db = await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE USER(UserId INTEGER PRIMARY KEY AUTOINCREMENT, Email TEXT, Password TEXT)');
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        await db.execute('DROP TABLE IF EXISTS USER');
        await db.execute(
            'CREATE TABLE USER(UserId INTEGER PRIMARY KEY AUTOINCREMENT, Email TEXT, Password TEXT)');
      },
    );
    return db;
  }

  Future<List<Map<String, dynamic>>> getUserListFromTblUser() async {
    Database db = await initDatabase();
    List<Map<String, dynamic>> userList = await db.rawQuery('SELECT * FROM USER');
    return userList;
  }

  Future<int> insertUserInMyDatabase(dynamic emailValue, dynamic passwordValue) async {
    Database db = await initDatabase();
    Map<String, dynamic> values = {
      'Email': emailValue,
      'Password': passwordValue,
    };
    return await db.insert('USER', values);
  }

}
