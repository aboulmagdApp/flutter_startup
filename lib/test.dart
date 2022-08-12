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
  String country = "";
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
                Text("Egypt"),
                Radio(
                    value: "eg",
                    groupValue: country,
                    onChanged: (String? val) {
                      setState(() {
                        country = val!;
                        print(country);
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text("USA"),
                Radio(
                    value: "usa",
                    groupValue: country,
                    onChanged: (String? val) {
                      setState(() {
                        country = val!;
                        print(country);
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text("Sudia"),
                Radio(
                    activeColor: Colors.red,
                    value: "sa",
                    groupValue: country,
                    onChanged: (String? val) {
                      setState(() {
                        country = val!;
                        print(country);
                      });
                    })
              ],
            ),
          ]),
        ));
  }
}
