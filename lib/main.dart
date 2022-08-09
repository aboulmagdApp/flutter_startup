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
            Center(
              child: MaterialButton(
                onPressed: () {},
                child: Text('aboulmagd'),
                elevation: 10,
                splashColor: Colors.blue,
                color: Colors.red,
                height: 40,
                minWidth: 200,
                textColor: Colors.white,
              ),
            ),
          ],
        ));
  }
}
