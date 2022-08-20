import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int selectedIndex = 1;
  List<Widget> widgetpages = [
    Text(
      "Mohamed",
      style: TextStyle(fontSize: 40),
    ),
    Text(
      "aboulmagd",
      style: TextStyle(fontSize: 40),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedItemColor: Colors.black,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: Colors.brown,
            items: [
              BottomNavigationBarItem(
                  label: "widget one", icon: Icon(Icons.person)),
              BottomNavigationBarItem(
                  label: "widget two", icon: Icon(Icons.alarm_on)),
            ]),
        body: widgetpages.elementAt(selectedIndex));
  }
}
