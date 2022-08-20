import 'package:flutter/material.dart';
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
          title: Text('Homepage'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.red,
                cursorHeight: 30,
                initialValue: "aboulmagd",
                keyboardType: TextInputType.number,
                maxLength: 20,
                obscureText: true,
              )
            ],
          ),
        ));
  }
}


// pageView + loop = PageViewBuilder