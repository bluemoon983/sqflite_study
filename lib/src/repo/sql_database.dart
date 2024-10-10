import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlDatabase {
  static final SqlDatabase instance = SqlDatabase._instance();

  Database? _database;

  SqlDatabase._instance() {
    _initDatabase();
  }

  factory SqlDatabase() {
    return instance;
  }

  Future<void> _initDatabase() async {
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, 'sample.db');
    _database = await openDatabase(path, version: 1, onCreate: _databaseCreate);
  }

  void _databaseCreate(Database db, int version) async {
    await db.execute('''
      create table sample(
        _id integer primary key autoincrement,
        name text not null,
        yn integer not null,
        value double not null,
        createdAt text not null,
      )
    ''');
  }
}
