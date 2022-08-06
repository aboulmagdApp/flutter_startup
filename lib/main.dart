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
          width: double.infinity,
          height: 400,
          color: Colors.red,
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // x محور
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("How Are You"),
              Text("How Are You Too"),
              Container(
                color: Colors.red,
                child: Text("this is Flutter "),
              ),
              // Image.asset('assets/images/unnamed.png')
            ],
          ),
        ));
  }
}
