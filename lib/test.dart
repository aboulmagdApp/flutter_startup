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
  List names = ["moahmed", "aboulamgd", "eman", "shambhavi", "carla", "lara"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filternames =
        names.where((element) => element.contains(query)).toList();
    return ListView.builder(
      itemCount: query == "" ? names.length : filternames.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            query = query == "" ? names[i] : filternames[i];
            showResults(context);
          },
          child: ListTile(
            title: Text(query == "" ? "${names[i]}" : "${filternames[i]}"),
          ),
        );
      },
    );
  }
}
