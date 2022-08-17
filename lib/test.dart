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
        appBar: AppBar(
          title: Text('Homepage'),
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.save)),
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm_add)),
          ],
          elevation: 2,
          shadowColor: Colors.blue,
          backgroundColor: Colors.brown,
          brightness: Brightness.light,
          centerTitle: true,
        ),
        // drawer: Drawer(),
        body: Container(
            child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children: List.generate(6, (index) {
            return Container(
              color: Colors.red,
              child: Text('Container : $index'),
            );
          }),
        )));
  }
}
