import 'package:my_flutter_app/src/model/sample.dart';
import 'package:my_flutter_app/src/repo/sql_database.dart';

class SqlSampleCrud {
  static Future<Sample> create(Sample sample) async {
    var db = await SqlDatabase().database;
    var id = await db.insert(Sample.tableName, sample.toJson());
    return sample.clone(id: id);
  }

  static Future<List<Sample>> getList() async {
    var db = await SqlDatabase().database;
    var result = await db.query(Sample.tableName, columns: [
      SampleFields.id,
      SampleFields.name,
      SampleFields.yn,
      SampleFields.createdAt,
    ]);

    return result.map(
      (data) {
        return Sample.fromJson(data);
      },
    ).toList();
  }

  static Future<Sample?> getSempleOneList(int id) async {
    var db = await SqlDatabase().database;
    var result = await db.query(Sample.tableName,
        columns: [
          SampleFields.id,
          SampleFields.name,
          SampleFields.value,
          SampleFields.yn,
          SampleFields.createdAt,
        ],
        where: '${SampleFields.id} = $id');

    var list = result.map(
      (data) {
        return Sample.fromJson(data);
      },
    ).toList();
    if (list.isNotEmpty) {
      return list.first;
    } else {
      return null;
    }
  }
}
