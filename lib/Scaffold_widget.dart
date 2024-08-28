import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_1/date_widget.dart';
import 'package:widget_1/image_widget.dart';
import 'package:widget_1/input_selection.dart';
import 'package:widget_1/new_tab.dart';
import 'package:widget_1/row_column.dart';
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
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView(
        shrinkWrap: false,
        children: [
          DateWidget(),
          ImageWidget(),
          InputSelection(),
          Center(
            child: DialogWidget(),
          ),
          RowColumn(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
            icon: Icon(Icons.cases_outlined),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_browser_outlined),
            label: 'Left',
          ),
        ],
      ),
      floatingActionButton: NewTabWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
