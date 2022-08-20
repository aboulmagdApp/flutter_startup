import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> with SingleTickerProviderStateMixin {
  late TabController mycontroller;

  static const List<Tab> myTabs = <Tab>[
    Tab(
      text: 'widget one',
      icon: Icon(Icons.person),
    ),
    Tab(
      text: 'widget two',
      icon: Icon(Icons.alarm),
    ),
    Tab(
      text: 'widget three',
      icon: Icon(Icons.copy),
    ),
  ];

  @override
  void initState() {
    mycontroller =
        new TabController(length: myTabs.length, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
          bottom: TabBar(
              controller: mycontroller,
              isScrollable: true,
              indicatorColor: Colors.red,
              indicatorWeight: 2,
              labelColor: Colors.white,
              onTap: (index) {
                print(index);
              },
              tabs: myTabs),
        ),
        body: TabBarView(
          controller: mycontroller,
          children: [
            Container(
                color: Colors.green,
                width: double.infinity,
                child: Text('Mohamed')),
            Container(
                color: Colors.yellow,
                width: double.infinity,
                child: Text('aboulamgd')),
            Container(
                color: Colors.brown,
                width: double.infinity,
                child: Text('copy data')),
          ],
        ));
  }
}
