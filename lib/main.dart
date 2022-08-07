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
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: IndexedStack(
            index: 1,
            children: [
              Container(
                color: Colors.red,
                child: Text("One"),
                width: 500,
                height: 500,
              ),
              Container(
                color: Colors.green,
                child: Text("Two"),
                width: 300,
                height: 300,
              ),
              Container(
                color: Colors.blue,
                child: Text("Three"),
                width: 200,
                height: 200,
              )
            ],
          ),
        ));
  }
}
