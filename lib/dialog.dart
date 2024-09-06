import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayout();
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: ElevatedButton(
          child: const Text('show alert'),
          onPressed: () {
            showAlertDialog(context);
          },
        ));
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = ElevatedButton(
    child: const Text("OK"),
    onPressed: () {},
  );

  AlertDialog alert = AlertDialog(
    title: const Text("My Tittle"),
    content: const Text("This is my message."),
    actions: [okButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
