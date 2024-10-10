import 'package:flutter/material.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  Widget _sampleOne(int index) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
              ),
              Text('제길 또 대상혁야 나는 숭배해야만 해 #$index'),
            ],
          ),
          const SizedBox(height: 7),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SQFlite Sample"),
      ),
      body:
          ListView(children: List.generate(100, (index) => _sampleOne(index))),
    );
  }
}
