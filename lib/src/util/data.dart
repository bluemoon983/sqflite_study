import 'package:uuid/uuid.dart';

class Data {
  static String makeUUID() {
    return const Uuid().v1();
  }
}
