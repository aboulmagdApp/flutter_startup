import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpTest extends StatefulWidget {
  @override
  State<HttpTest> createState() => _HttpTestState();
}

class _HttpTestState extends State<HttpTest> {
  List posts = [];

  Future getPosts() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var respones = await http.get(Uri.parse(url));
    var responesbody = jsonDecode(respones.body);
    setState(() {
      posts.addAll(responesbody);
    });
  }

  @override
  void initState() {
    getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: posts == null || posts.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("${posts[i]['title']}"),
                );
              }),
    );
  }
}
