import 'package:my_flutter_app/src/model/sample.dart';
import 'package:my_flutter_app/src/repo/sql_database.dart';

class SqlSampleCrud {
  static Future<Sample> create(Sample sample) async {
    var db = await SqlDatabase().database;
    var id = await db.insert(Sample.tableName, sample.toJson());
    return sample.clone(id: id);
  }
}
