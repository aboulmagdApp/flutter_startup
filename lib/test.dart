import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  var usa = false;
  var sa = false;
  var eg = false;
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
            Row(
              children: [
                Text("Saudi arabia"),
                Checkbox(
                    activeColor: Colors.red,
                    checkColor: Colors.black,
                    value: sa,
                    onChanged: (val) {
                      setState(() {
                        sa = val!;
                      });
                      print('change');
                    })
              ],
            ),
            Row(
              children: [
                Text("USA"),
                Checkbox(
                    value: usa,
                    onChanged: (val) {
                      setState(() {
                        usa = val!;
                      });
                      print('change');
                    })
              ],
            ),
            Row(
              children: [
                Text("Egypt"),
                Checkbox(
                    value: eg,
                    onChanged: (val) {
                      setState(() {
                        eg = val!;
                      });
                      print('change');
                    })
              ],
            ),
          ]),
        ));
  }
}
