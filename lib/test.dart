import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Homepage'),
              bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  indicatorWeight: 2,
                  labelColor: Colors.white,
                  onTap: (index) {
                    print(index);
                  },
                  tabs: [
                    Tab(
                      child: Text('widget one'),
                      icon: Icon(Icons.person),
                    ),
                    Tab(
                      child: Text('widget two'),
                      icon: Icon(Icons.alarm),
                    ),
                  ]),
            ),
            body: TabBarView(
              children: [
                Container(
                    color: Colors.green,
                    width: double.infinity,
                    child: Text('Mohamed')),
                Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: Text('aboulamgd')),
              ],
            )));
  }
}
