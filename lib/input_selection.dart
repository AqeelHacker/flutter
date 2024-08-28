import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget {
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  TextEditingController nama = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: nama,
            obscureText: false,
            onChanged: (a) {
              setState(() {});
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("input nama"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("password"),
            ),
          ),
          Text(nama.text),
          Text(password.text),
          Text('forgot password?'),
        ],
      ),
    );
  }
}
