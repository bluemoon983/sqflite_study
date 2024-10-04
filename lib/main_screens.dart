import 'package:flutter/material.dart';
import 'package:my_flutter_app/data.dart';
import 'package:my_flutter_app/detail_view.dart';
import 'package:my_flutter_app/sample.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  void createdRandomSample(){
    Sample(createdAt: DateTime.now(), name: DataUtils.makeUUID(),value: DataUtils.randomValue(),);
  }

  
  Widget _sampleOne(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailView(sample: index)));
      },
      child: Container(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 7),
                Text("그를 숭배하야만 해-#$index"),
              ],
            ),
            const SizedBox(height: 7),
            Text(
              DateTime.now().toIso8601String(),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sqflite Sample'),
      ),
      body: ListView(
        children: List.generate(
          100,
          (index) => _sampleOne(index),
        ),
      ),
      floatingActionButton: FloatingActionButton(    
        onPressed: ,
        child: const Icon(Icons.add),
      ),
    );
  }
}
