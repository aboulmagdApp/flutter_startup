import 'package:flutter/material.dart';

import 'one.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

var username;

class _TestState extends State<Test> {
  // TextEditingController username = new TextEditingController();
  String value = "";
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print("username = $username");
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text page'),
        ),
        body: Column(
          children: [
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return One();
                  }));
                },
                child: Text('go To Page one'),
              ),
            )
          ],
        ));
  }
}
