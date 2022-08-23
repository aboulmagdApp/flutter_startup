import 'package:flutter/material.dart';

import 'one.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var _val = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text page'),
        ),
        body: Column(
          children: [
            Slider(
                min: 0.0,
                max: 100,
                activeColor: Colors.red,
                inactiveColor: Colors.black,
                value: _val,
                onChanged: (val) {
                  setState(() {
                    _val = val;
                    print(_val);
                  });
                })
          ],
        ));
  }
}
