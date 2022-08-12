import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text('aboulmagd'),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: GestureDetector(
            child: Container(
              child: Text('Add'),
              color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            ),
            // onTapUp: (tap) {
            //   print('up');
            // },
            // onTapDown: (tap) {
            //   print('down');
            // },
            // onTapCancel: () {
            //   print('cancel');
            // },
            // onLongPress: () {
            //   print('long press');
            // },
            onDoubleTap: () {
              print('Double Tap');
            },
          ),
        ));
  }
}

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  var text = "How are you";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$text"),
            RaisedButton(
              onPressed: () {
                setState(() {
                  text = "Welcome to flutter";
                });
                print(text);
              },
              child: Text('changeText'),
            ),
          ],
        ),
      ),
    );
  }
}
