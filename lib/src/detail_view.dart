import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/model/sample.dart';

class DetailView extends StatefulWidget {
  final Sample sample;
  const DetailView({super.key, required this.sample});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.sample.toString())),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "name: 대상혁 ${widget.sample}",
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 10),
            const Text(
              'Y/N : GOAT',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 10),
            const Text(
              'value : 4',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 10),
            Text(
              "CreatedAt: ${DateTime.now()}",
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: const Text(
                'Update',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
