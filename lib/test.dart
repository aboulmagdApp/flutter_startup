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
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(5),
            reverse: false,
            physics: BouncingScrollPhysics(),
            children: [
              Text('aboulmagd'),
              Container(
                child: Text('container one'),
                color: Colors.red,
                height: 300,
              ),
              Container(
                child: Text('container two'),
                color: Colors.blue,
                height: 300,
              ),
              Container(
                child: Text('container three'),
                color: Colors.yellow,
                height: 300,
              ),
              Container(
                child: Text('container four'),
                color: Colors.brown,
                height: 300,
              ),
            ]));
  }
}
