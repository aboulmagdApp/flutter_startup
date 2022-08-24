import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class DialogTest extends StatefulWidget {
  const DialogTest({super.key});

  @override
  State<DialogTest> createState() => _DialogTestState();
}

class _DialogTestState extends State<DialogTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dialog')),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.SUCCES,
                          headerAnimationLoop: false,
                          animType: AnimType.SCALE,
                          title: 'Question',
                          // desc: 'Dialog description here...',
                          body: Text('Dialog description here...'),
                          buttonsTextStyle:
                              const TextStyle(color: Colors.white),
                          showCloseIcon: true,
                          btnCancelOnPress: () {
                            print('cancel');
                          },
                          btnOkOnPress: () {
                            print('ok');
                          },
                          btnCancelColor: Colors.black45)
                      .show();
                },
                child: Text('show alert'),
              )
            ]),
      ),
    );
  }
}
