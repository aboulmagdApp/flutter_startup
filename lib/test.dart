import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(initialPage: 2, viewportFraction: 0.6);
    super.initState();
  }

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
              child: PageView(
                //reverse: true,
                //scrollDirection: Axis.vertical,
                controller: pc,
                onPageChanged: (index) {
                  print(index);
                },
                children: [
                  Image.asset(
                    'images/fb.png',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/flutter.png',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/WhatsApp.png',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/google.png',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
