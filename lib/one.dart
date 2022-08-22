// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page one'),
      ),
      body: Column(
        children: [
          Text('page one'),
          RaisedButton(
            onPressed: () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
              ;
            },
            child: Text('Back'),
          )
        ],
      ),
    );
  }
}
