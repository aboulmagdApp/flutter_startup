import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  // GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   key: scaffoldKey,
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
            child: RaisedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 5),
              content: Text('Hi How Are You'),
              backgroundColor: Colors.red,
              action: SnackBarAction(
                textColor: Colors.white,
                label: 'close',
                onPressed: () {
                  print('close');
                },
              ),
              onVisible: () {
                print('Show SnakBar');
              },
            ));
          },
          child: Text('Show SnakBar'),
        )));
  }
}
