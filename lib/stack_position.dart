import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Image(
                      image: AssetImage("assets/money.png"),
                      width: 200,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Text(
                      "Saldo : 1.000.000,-",
                      style: TextStyle(fontSize: 14),
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