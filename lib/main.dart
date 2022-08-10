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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
        body: ListView(
          children: [
            Container(
              child: Text('Container'),
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 100, bottom: 100),
            ),
            Container(
              child: Text('Container'),
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 100, bottom: 100),
            ),
            Container(
              child: Text('Container'),
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 100, bottom: 100),
            ),
            Container(
              child: Text('Container'),
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 100, bottom: 100),
            ),
            Container(
              child: Text('Container'),
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 100, bottom: 100),
            ),
            Container(
              child: Text('Container'),
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 100, bottom: 100),
            ),
          ],
        ));
  }
}
