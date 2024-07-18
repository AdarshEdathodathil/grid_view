import 'package:flutter/material.dart';
import 'package:grid_view/gridview_builder.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              children: [
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.green),
                Container(color: Colors.yellow),
                Container(color: const Color.fromARGB(255, 188, 32, 197)),
                Container(color: const Color.fromARGB(255, 42, 208, 223)),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const builder(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 145, 247, 150),
                  padding: const EdgeInsets.all(10.0),
                  textStyle: const TextStyle(fontSize: 18, color: Colors.white),
                  side: const BorderSide(color: Colors.black)),
              child: const Text("Next Method"))
        ],
      )),
    );
  }
}
