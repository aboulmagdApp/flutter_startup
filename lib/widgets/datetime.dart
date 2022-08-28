import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class DatetimeTest extends StatefulWidget {
  const DatetimeTest({super.key});

  @override
  State<DatetimeTest> createState() => _DatetimeTestState();
}

class _DatetimeTestState extends State<DatetimeTest> {
  DateTime date = DateTime.now().subtract(Duration(hours: 3));
  DateTime datetwo = DateTime.now().add(Duration(days: 10));
  DateTime datethree = DateTime.now().subtract(Duration(days: 10));

  changeLocal() async {
    await Jiffy.locale("ar");
  }

  @override
  void initState() {
    changeLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('datetime'),
      ),
      body: Center(
          child: Container(
        child: RaisedButton(
          onPressed: () {
            print(Jiffy(date).fromNow());
          },
          child: Text('Show Date Time'),
        ),
      )),
    );
  }
}
