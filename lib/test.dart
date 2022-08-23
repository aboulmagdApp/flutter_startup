import 'package:flutter/material.dart';

import 'one.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late ScrollController sc;

  @override
  void initState() {
    sc = new ScrollController();
    sc.addListener(() {
      print(sc.offset);
      print("Max scroll : ${sc.position.maxScrollExtent}");
      print("Min scroll : ${sc.position.minScrollExtent}");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text page'),
        ),
        body: ListView(
          controller: sc,
          children: [
            RaisedButton(
              onPressed: () {
                sc.jumpTo(sc.position.maxScrollExtent);
              },
              child: Text("jump to bottom"),
            ),
            ...List.generate(
                8,
                (index) => Container(
                      margin: EdgeInsets.all(10),
                      color: index.isEven ? Colors.green : Colors.red,
                      height: 100,
                      width: double.infinity,
                      child: Text('Container $index'),
                    )),
            RaisedButton(
              onPressed: () {
                sc.animateTo(0,
                    duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              child: Text("jump to top"),
            )
          ],
        ));
  }
}
