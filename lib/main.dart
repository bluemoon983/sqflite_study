import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/main_screens.dart';
import 'package:my_flutter_app/src/repo/sql_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SqlDatabase();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MainScreens(),
    );
  }
}
