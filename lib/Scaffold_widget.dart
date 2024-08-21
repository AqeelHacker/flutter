import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dialog.dart';   

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garena Free Fire'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.donut_large_outlined),
        ),
        backgroundColor: Color.fromARGB(99, 80, 90, 110),
        foregroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Column(
        children: [
            DialogWidget(),
          Center(
            child: Image.asset(
              'assets/g1.jpg',
              width: 1000,
              height: 2500,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Color.fromARGB(99, 80, 90, 110),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Gift',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leave_bags_at_home_outlined),
            label: 'Left',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'increment value',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
