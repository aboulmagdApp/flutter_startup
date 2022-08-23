import 'package:flutter/material.dart';

import 'one.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text page'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      child: Text("bottomSheet"),
                      height: 200,
                    );
                  });
            },
            child: Text("Show Modal Bottom Sheet"),
          ),
        ));
  }
}
