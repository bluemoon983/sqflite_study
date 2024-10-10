import 'dart:math';

import 'package:uuid/uuid.dart';

class Data {
  static String makeUUID() {
    return const Uuid().v1();
  }

  static double randomValue() {
    return Random().nextInt(100) / 3;
  }
}
