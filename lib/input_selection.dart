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
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: nama,
            obscureText: false,
            onChanged: (a) {
              setState(() {});
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("input nama"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: password,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("password"),
            ),
          ),
          Text(nama.text),
          Text(password.text),
          const Text('forgot password?'),
        ],
      ),
    );
  }
}
