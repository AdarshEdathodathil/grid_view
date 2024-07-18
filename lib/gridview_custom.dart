import 'package:flutter/material.dart';
import 'package:grid_view/gridview_extend.dart';

class GridViewCustomPage extends StatelessWidget {
  const GridViewCustomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Custom"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.custom(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        color: Colors.teal,
                        alignment: Alignment.center,
                        child: Text('Item $index',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18)),
                      );
                    },
                    childCount: 20,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const extend(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 136, 242, 148),
                    padding: const EdgeInsets.all(8.0),
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 18),
                    side: const BorderSide(color: Colors.black)),
                child: const Text("Next Method"))
          ],
        ),
      ),
    );
  }
}
