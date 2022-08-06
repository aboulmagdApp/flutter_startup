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
        body: Container(
          width: 400,
          height: 400,
          color: Colors.black,
          child: Stack(
            //alignment: Alignment.topCenter,
            children: [
              Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
                child: Text("widget two"),
              ),
            ],
          ),
        ));
  }
}
