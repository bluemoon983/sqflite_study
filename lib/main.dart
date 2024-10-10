import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/main_screens.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreens(),
    );
  }
}
