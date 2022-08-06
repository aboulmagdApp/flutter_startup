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
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: Text(
                  "One",
                  style: TextStyle(fontSize: 40),
                ),
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Text(
                  "Two",
                  style: TextStyle(fontSize: 40),
                ),
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Text(
                  "Three",
                  style: TextStyle(fontSize: 40),
                ),
                color: Colors.blue,
              ),
            ),
          ],
        ));
  }
}
