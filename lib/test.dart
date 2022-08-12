import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
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
            RadioListTile(
                title: Text('Country Egypt'),
                subtitle: Text('Cairo'),
                value: "Eg",
                groupValue: country,
                onChanged: (String? val) {
                  setState(() {
                    country = val!;
                  });
                }),
            RadioListTile(
                title: Text('Country USA'),
                subtitle: Text('America'),
                value: "USA",
                groupValue: country,
                onChanged: (String? val) {
                  setState(() {
                    country = val!;
                  });
                }),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.leading,
                selected: country == "em" ? true : false,
                activeColor: Colors.brown,
                title: Text('Country UAE'),
                subtitle: Text('Ematate'),
                secondary: Icon(Icons.flag),
                value: "em",
                groupValue: country,
                onChanged: (String? val) {
                  setState(() {
                    country = val!;
                  });
                }),
          ]),
        ));
  }
}
