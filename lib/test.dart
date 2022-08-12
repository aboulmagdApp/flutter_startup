import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  bool usa = false;
  bool sa = false;
  bool eg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Text(
              "Choose Country",
              style: TextStyle(fontSize: 30),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Text("country USA"),
                subtitle: Text(
                  "America",
                  style: TextStyle(color: Colors.red),
                ),
                secondary: Icon(Icons.flag),
                isThreeLine: true,
                selected: sa,
                value: sa,
                onChanged: (val) {
                  setState(() {
                    sa = val!;
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.green,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Text("country KSA"),
                subtitle: Text(
                  "Riyadh",
                  style: TextStyle(color: Colors.red),
                ),
                secondary: Icon(Icons.flag),
                isThreeLine: true,
                selected: usa,
                value: usa,
                onChanged: (val) {
                  setState(() {
                    usa = val!;
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.green,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Text("country Egypt"),
                subtitle: Text(
                  "Cairo",
                  style: TextStyle(color: Colors.red),
                ),
                secondary: Icon(Icons.flag),
                isThreeLine: true,
                selected: eg,
                value: eg,
                onChanged: (val) {
                  setState(() {
                    eg = val!;
                  });
                }),
          ]),
        ));
  }
}
