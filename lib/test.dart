import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController username = new TextEditingController();
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                // onTap: () {
                //   print("onTap");
                // },
                onEditingComplete: () {
                  print("complete");
                },
                onChanged: (text) {
                  setState(() {
                    value = text;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text("value : $value"),
              RaisedButton(
                onPressed: () {
                  print(username.text);
                },
                child: Text('send'),
              )
            ],
          ),
        ));
  }
}


// pageView + loop = PageViewBuilder