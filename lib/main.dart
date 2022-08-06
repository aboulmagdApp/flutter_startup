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
        body: Stack(
          children: [
            Container(
              color: Colors.red,
              width: 400,
              height: 400,
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 300,
              child: Text("widget two"),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Text("widget three"),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              color: Colors.brown,
              width: 200,
              height: 200,
              child: Text("widget four"),
            ),
          ],
        ));
  }
}
