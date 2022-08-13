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
      body: ListView.separated(
          separatorBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                color: Colors.grey[300],
                thickness: 2,
              ),
            );
          }),
          itemCount: mobiles.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text("${mobiles[i]['name']}"),
              subtitle: Text("Screen : ${mobiles[i]['screen']}"),
              trailing: Text("cpu : ${mobiles[i]['cpu']}"),
            );
          }),
    );
  }
}
