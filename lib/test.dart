import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  List mobiles = [
    {"name": "s20 Ultra", "screen": "6.2", "cpu": "8 core"},
    {"name": "s21 Ultra", "screen": "6.3", "cpu": "5 core"},
    {"name": "s10", "screen": "7.3", "cpu": "2 core"},
    {"name": "iphone 13 proMax", "screen": "7.3", "cpu": "10 core"}
  ];
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.save)),
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm_add)),
          ],
          elevation: 2,
          shadowColor: Colors.blue,
          backgroundColor: Colors.brown,
          brightness: Brightness.light,
          centerTitle: true,
        ),
        drawerScrimColor: Colors.red.withOpacity(0.8),
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'M',
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                accountName: Text('aboulmagd'),
                accountEmail: Text('aboulmagd"live.com')),
            ListTile(
              title: Text('Home page'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.help_center),
              onTap: () {},
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ]),
        ),
        body: Center(
          child: Container(
            child: Builder(builder: (context) {
              return RaisedButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                child: Text('open drawer'),
              );
            }),
          ),
        ));
  }
}
