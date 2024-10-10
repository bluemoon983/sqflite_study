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

  Map<String, dynamic> toJson() {
    return {
      SampleFields.id: id,
      SampleFields.name: name,
      SampleFields.yn: yn ? 1 : 0,
      SampleFields.value: value,
      SampleFields.createdAt: createdAt.toIso8601String(),
    };
  }

  Sample clone({
    int? id,
    String? name,
    bool? yn,
    double? value,
    DateTime? createdAt,
  }) {
    return Sample(
      id: id ?? this.id,
      name: name ?? this.name,
      yn: yn ?? this.yn,
      value: value ?? this.value,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
