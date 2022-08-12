import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  var selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.blue,
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            onTap: () {
              print('Tap');
            },
            icon: Icon(Icons.ac_unit_outlined),
            iconEnabledColor: Colors.white,
            iconDisabledColor: Colors.red,
            underline: Divider(thickness: 0),
            isExpanded: true,
            hint: Container(
              width: double.infinity,
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "إختر البلد من هنا",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            items: ["USA", "UAE", "SY", "EG", "SA"]
                .map((e) => DropdownMenuItem(
                      child: Text(
                        '$e',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                      value: e,
                    ))
                .toList(),
            onChanged: (val) {
              setState(() {
                selectedCountry = val;
              });
            },
            value: selectedCountry,
          ),
        ),
      )),
    );
  }
}
