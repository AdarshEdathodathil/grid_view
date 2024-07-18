import 'package:flutter/material.dart';

class extend extends StatelessWidget {
  const extend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView.extent Example'),
          backgroundColor: Colors.yellow,
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150.0, // Maximum extent of each item in the grid
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
          children: List.generate(
            100,
            (index) => Card(
              child: Center(
                child: Text('Item $index'),
              ),
            ),
          ),
        ));
  }
}
