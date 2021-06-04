import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconButton notificationIcon = IconButton(
    icon: Icon(Icons.notifications),
  );

  IconButton profileIcon = IconButton(
    icon: Icon(Icons.circle),
  );

  //BottomStart
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Dashboard',
      style: optionStyle,
    ),
    Text(
      'Index 1: Invoices',
      style: optionStyle,
    ),
    Text(
      'Index 2: Expenses',
      style: optionStyle,
    ),
    Text(
      'Index 3: Time Tracker',
      style: optionStyle,
    ),
    Text(
      'Index 4: More',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //BottomEnd
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: notificationIcon),
          IconButton(icon: profileIcon),
        ],
      ),

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
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Time Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent[400],
        onTap: _onItemTapped,
      ),
      //BottomEnd
    );
  }
}
