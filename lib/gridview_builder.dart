import 'package:flutter/material.dart';
import 'package:grid_view/gridview_custom.dart';

class builder extends StatelessWidget {
  const builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView.builder Example'),
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 8.0, // Spacing between columns
                    mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  
                  itemCount: 10, // Number of items in the grid
                  itemBuilder: (BuildContext context, int index)
                   {
                    // The itemBuilder callback is called for each item in the grid
                    return Card(
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const GridViewCustomPage(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 159, 243, 150),
                      padding: const EdgeInsets.all(8.0),
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0))),
                  child: const Text("Next Method"))
            ],
          ),
        ));
  }
}
