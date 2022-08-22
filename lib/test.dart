import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController username = new TextEditingController();
  String value = "";
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formstate,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  validator: (text) {
                    if (text!.length < 4) {
                      return 'لا يمكن النص يكون اقل من اربع احرف';
                    }
                    if (text.length > 10) {
                      return 'لا يمكن النص يكون اكتر من 10 احرف';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text("value : $value"),
                RaisedButton(
                  onPressed: send,
                  child: Text('send'),
                )
              ],
            ),
          ),
        ));
  }
}


// pageView + loop = PageViewBuilder