import 'package:flutter/material.dart';

class DatetimeTest extends StatefulWidget {
  const DatetimeTest({super.key});

  @override
  State<DatetimeTest> createState() => _DatetimeTestState();
}

class _DatetimeTestState extends State<DatetimeTest> {
  DateTime dateOne = DateTime.now();
  DateTime datetwo = DateTime.now().add(Duration(days: 10));
  DateTime datethree = DateTime.now().subtract(Duration(days: 10));
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: RaisedButton(
        onPressed: () {
          print(dateOne.isBefore(datethree));
        },
        child: Text('Show Date Time'),
      ),
    ));
  }
}
