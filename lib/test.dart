import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  List mobiles = [
    {"name": "s20 Ultra", "screen": "6.2", "cpu": "8 core"},
    {"name": "s21 Ultra", "screen": "6.3", "cpu": "5 core"},
    {"name": "s10", "screen": "7.3", "cpu": "2 core"},
    {"name": "iphone 13 proMax", "screen": "7.3", "cpu": "10 core"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            child: GridView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: mobiles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
                itemBuilder: (context, i) {
                  return Container(
                    // margin: EdgeInsets.all(10),
                    child: ListTile(
                      tileColor: Colors.red,
                      title: Text("${mobiles[i]['name']}"),
                      subtitle: Text("Screen : ${mobiles[i]['screen']}"),
                      // trailing: Text("cpu : ${mobiles[i]['cpu']}"),
                    ),
                  );
                })));
  }
}
