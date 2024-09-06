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
            const Text("Toko Online"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/g1.jpg"),
                                      width: 300,
                                      height: 300,
                                    ),
                                    Text("MONTAGE ONE SUT?!"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/RUOK.jpeg"),
                                      width: 300,
                                      height: 300,
                                    ),
                                    Text("RUOK IS BACK?!!"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/NN.jpeg"),
                                      width: 300,
                                      height: 300,
                                    ),
                                    Text("NICK NAME FF DIJAMIN KEREN!!"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/SG2.jpeg"),
                                      width: 300,
                                      height: 300,
                                    ),
                                    Text("SKIN SG 2 TERBARUU?!!"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/SG8.jpeg"),
                                      width: 300,
                                      height: 300,
                                    ),
                                    Text("KALIAN SUKA SKIN SG YG MANA???"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/PUBGVSFF.jpeg"),
                                      width: 300,
                                      height: 300,
                                    ),
                                    Text("FF VS PUBG!!!!"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 92, 84, 84),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/EMOT.jpeg"),
                                      width: 300,
                                      height: 300,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
