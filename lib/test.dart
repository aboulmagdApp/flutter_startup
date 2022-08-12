import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  bool notify = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('هل تريد تفعيل الاشعارات'),
              Switch(
                activeColor: Colors.pink,
                activeTrackColor: Colors.amber,
                inactiveTrackColor: Colors.black,
                inactiveThumbColor: Colors.green,
                value: notify,
                onChanged: (val) {
                  setState(() {
                    notify = val;
                    print(notify);
                  });
                },
              )
            ],
          ),
        ));
  }
}
