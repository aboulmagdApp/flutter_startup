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
            Text(
              'How Are You text one',
              style: TextStyle(fontSize: 40),
            ),
            Divider(
              color: Colors.black,
              height: 50,
              thickness: 0.2,
            ),
            Text(
              'How Are You text two',
              style: TextStyle(fontSize: 40),
            )
          ],
        ));
  }
}
