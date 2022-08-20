import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
                decoration: InputDecoration(
                    // hintText: "ادخل الاسم",
                    // hintStyle: TextStyle(color: Colors.blue),
                    // prefixIcon: Icon(Icons.search)
                    suffix: Text('ادخل الاسم')),
              )
            ],
          ),
        ));
  }
}


// pageView + loop = PageViewBuilder