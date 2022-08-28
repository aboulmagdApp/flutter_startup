import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpTest extends StatefulWidget {
  @override
  State<HttpTest> createState() => _HttpTestState();
}

class _HttpTestState extends State<HttpTest> {
  Future getPosts() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var respones = await http.get(Uri.parse(url));
    var responesbody = jsonDecode(respones.body);
    return responesbody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: getPosts(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      title: Text("${snapshot.data![i]['title']}"),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
