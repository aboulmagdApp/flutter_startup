import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late PageController pc;
  int selectedIndex = 0;
  @override
  void initState() {
    pc = new PageController(initialPage: 0, viewportFraction: 0.6);
    super.initState();
  }

  List images = [
    {"url": "images/fb.png"},
    {"url": "images/flutter.png"},
    {"url": "images/WhatsApp.png"},
    {"url": "images/google.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView.builder(
                controller: pc,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index]['url']);
                },
              ),
            ),
            RaisedButton(
              onPressed: () {
                pc.animateToPage(2,
                    duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              child: Text('go TO Page 2'),
            )
          ],
        ));
  }
}


// pageView + loop = PageViewBuilder