import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/model/sample.dart';
import 'package:my_flutter_app/src/repo/sql_sample_crud.dart';

class DetailView extends StatefulWidget {
  final Sample sample;
  const DetailView({super.key, required this.sample});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  Future<Sample?> _loadSampleOne() async {
    return SqlSampleCrud.getSempleOneList(widget.sample.id!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.sample.toString())),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder<Sample?>(
          future: _loadSampleOne(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Not Found Data by ${widget.sample.id}"),
              );
            }

            if (snapshot.hasData) {
              var data = snapshot.data!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "name: 대상혁 ${data.name}",
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Y/N : GOAT ${data.yn}',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'value : 4 ${data.value}',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "CreatedAt: ${data.createdAt}",
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    child: const Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
