import 'package:flutter/material.dart';

import 'one.dart';
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
          title: Text('Text page'),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: Datasearch());
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: Center(child: Text('aboulmagd')));
  }
}

class Datasearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('محتوى البحث');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Text('محتوى البحث'));
  }
}
