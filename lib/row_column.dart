import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Toko Online"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/g1.jpg"),
                          width: 300,
                        ),
                        Text("MONTAGE ONE SUT?!"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/RUOK.jpeg"),
                          width: 300,
                        ),
                        Text("RUOK IS BACK?!!"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/NN.jpeg"),
                          width: 300,
                        ),
                        Text("NICK NAME FF DIJAMIN KEREN!!"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/SG2.jpeg"),
                          width: 300,
                        ),
                        Text("SKIN SG 2 TERBARUU?!!"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/SG8.jpeg"),
                          width: 300,
                        ),
                        Text("KALIAN SUKA SKIN SG YG MANA???"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/PUBGVSFF.jpeg"),
                          width: 300,
                        ),
                        Text("FF VS PUBG!!!!"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 84, 84),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/EMOT.jpeg"),
                          width: 300,
                        ),
                        Text("EMOT FF BARU?KEREN BANGETT!!"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
