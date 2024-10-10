class Sample {
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
