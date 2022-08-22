import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController username = new TextEditingController();

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
                //readOnly: true,
                //initialValue: "aboulmagd",
                controller: username,
                style: TextStyle(color: Colors.red),
                textInputAction: TextInputAction.search,
                textAlign: TextAlign.end,
              ),
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