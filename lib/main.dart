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
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  width: 200,
                  height: 200,
                  top: 240,
                  child: Container(
                    color: Colors.red,
                    child: Text("Position one"),
                  )),
            ],
          ),
        ));
  }
}
