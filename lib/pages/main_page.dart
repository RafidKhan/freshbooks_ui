import 'package:flutter/material.dart';
import 'package:untitled/pages/invoices_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String titleMain = "Dashboard";
  String bodyText = "Dashboard";

  //BottomStart
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //
  //     if (index == 0) {
  //       titleMain = "Dashboard";
  //       bodyText = titleMain;
  //     } else if (index == 1) {
  //     } else if (index == 2) {
  //     } else if (index == 3) {
  //     } else if (index == 4) {}
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;

        if (index == 0) {
          return MyHomePage();
        } else if (index == 1) {
          return InvoicesPage();
        } else if (index == 2) {
          return MyHomePage();
        } else if (index == 3) {
          return MyHomePage();
        } else if (index == 4) {
          return MyHomePage();
        }
        else{
          return MyHomePage();
        }
      });
    }

    return MyHomePage();
  }
}
