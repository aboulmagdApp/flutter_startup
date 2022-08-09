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
        body: Center(
          child: RaisedButton(
            disabledColor: Colors.green,
            disabledTextColor: Colors.red,
            elevation: 20,
            splashColor: Colors.red,
            onLongPress: () {
              print('long pressed');
            },
            textColor: Colors.white,
            color: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            onPressed: () {
              print("Sign up");
            },
            child: Text('انشاء الحساب'),
          ),
        ));
  }
}
