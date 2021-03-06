import 'package:flutter/material.dart';
import 'package:untitled/pages/invoices_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String titleMain = "Dashboard";
  String bodyText = "Dashboard";

  //BottomStart
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  //BottomEnd
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
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(titleMain),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Text(bodyText),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/invoice_new.jpg'),
            ),
            label: 'Invoices',
            backgroundColor: Colors.blueGrey,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.money),
          //   label: 'Expenses',
          //   backgroundColor: Colors.blueGrey,
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.timer),
          //   label: 'Time Tracker',
          //   backgroundColor: Colors.blueGrey,
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.more_horiz),
          //   label: 'More',
          //   backgroundColor: Colors.blueGrey,
          // )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent[400],
       onTap: _onItemTapped,
      ),
      //BottomEnd
    );
  }
}
