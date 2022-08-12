import 'package:flutter/material.dart';

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
        body: Center(
            child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    title: Text('Title'),
                    contentPadding: EdgeInsets.all(10),
                    content: Text("content content content content"),
                  );
                });
          },
          child: Text('Show Alert'),
        )));
  }
}
