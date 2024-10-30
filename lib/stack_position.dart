import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_1/widget_function.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 17, 250, 0)),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          const Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "Saldo Rp. 1.000.000,-",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 200,
                            right: 20,
                            child: Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage("assets/person.jpeg"),
                          ),
                          Positioned(
                            top: 6,
                            right: 10,
                            child: PopupMenuButton<String>(
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              itemBuilder: (BuildContext context) {
                                return Constants.choices.map((String choice) {
                                  return PopupMenuItem<String>(
                                    value: choice,
                                    child: Text(choice),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  )),
                                  child: const Text(
                                    "Transaksi",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  child: GridView.count(
                                    crossAxisCount: 5,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 0,
                                    padding: const EdgeInsets.all(8),
                                    children: [
                                      WidgetFunction('assets/pulsa.jpeg', 'pulsa'),
                                      WidgetFunction('assets/pln.jpeg', 'PLN'),
                                      WidgetFunction('assets/tv.jpeg', 'Langganan TV'),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image:
                                                  AssetImage('assets/tv.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Langganan Saluran TV",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
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
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  )),
                                  child: const Text(
                                    "Transaksi",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  child: GridView.count(
                                    crossAxisCount: 5,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 0,
                                    padding: const EdgeInsets.all(8),
                                    children: [
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image:
                                                  AssetImage('assets/pln.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "PLN",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image:
                                                  AssetImage('assets/tv.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Langganan TV",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Column(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/pulsa.jpeg'),
                                              width: 50,
                                            ),
                                            Text(
                                              "Pulsa",
                                              style: TextStyle(fontSize: 10),
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Constants {
  static const String FirstItem = 'First Item';
  static const String SecondItem = 'Second Item';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print('I First Item');
  } else if (choice == Constants.SecondItem) {
    print('I Second Item');
  } else if (choice == Constants.ThirdItem) {
    print('I Third Item');
  }
}

        //       Column(
        //         children: [
                  // Image(
                  //   image: AssetImage("assets/money.png"),
                  //   width: 200
                  // ),
        //           Container(
        //             width: MediaQuery.of(context).size.width,
        //             padding: EdgeInsets.only(left: 10, right: 10,),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Text("Saldo : Rp 1.000.000,-"),
        //               Icon(Icons.verified_user_outlined),
        //             ],
        //           ),
        //           ),
        //         ],
        //       ),