import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Homepage'),
            ),
            body: TabBarView(
              children: [
                Container(
                    color: Colors.green,
                    width: double.infinity,
                    child: Text('Mohamed')),
                Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: Text('aboulamgd')),
              ],
            )));
  }
}
