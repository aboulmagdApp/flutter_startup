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
        body: Container(
          child: ListTile(
            title: Text("S20 Ultra"),
            subtitle: Text('SAmsung'),
            leading: Icon(Icons.mobile_friendly),
            trailing: Text("Price 200\$"),
            onTap: () {
              print('onTap');
            },
            onLongPress: () {
              print('longPress');
            },
            tileColor: Colors.green,
          ),
        ));
  }
}
