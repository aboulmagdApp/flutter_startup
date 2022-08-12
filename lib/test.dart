import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  bool notify = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/unnamed.png'),
            // backgroundColor: Colors.green,
            radius: 40,
            child: Text(
              'MA',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ));
  }
}
