import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  final int sample;
  const DetailView({super.key, required this.sample});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.sample.toString(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'name: 제길 또 대상혁이야 나는 숭배해야만해 ${widget.sample}',
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const Text(
              "Y/N : God",
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              "value : 1557",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Createdt : ${DateTime.now()}",
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Update"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
