import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
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
        body: Row(
          children: [
            Expanded(
              child: Container(
                child: Text("One"),
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Text("Two"),
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("Three"),
                color: Colors.blue,
              ),
            ),
          ],
        ));
  }
}
