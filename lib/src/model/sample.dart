class SampleFields {
  static const String id = '_id';
  static const String name = 'name';
  static const String yn = 'yn';
  static const String value = 'value';
  static const String createdAt = 'createdt';
}

class Sample {
  static String tableName = 'sample';
  final int? id;
  final String name;
  final bool yn;
  final double value;
  final DateTime createdAt;

  const Sample({
    this.id,
    required this.name,
    required this.yn,
    required this.value,
    required this.createdAt,
  });
}
