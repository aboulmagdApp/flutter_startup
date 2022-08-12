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
        child: SwitchListTile(
          title: Text('تغيير اللغه'),
          subtitle: Text('تعديل لغة التطبيق'),
          isThreeLine: true,
          activeColor: Colors.pink,
          secondary: Icon(Icons.language),
          controlAffinity: ListTileControlAffinity.trailing,
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
        ),
      ),
    );
  }
}
