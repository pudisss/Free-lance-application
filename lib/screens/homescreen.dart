import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "home.dart";
import "search.dart";
import "message.dart";
import "profile.dart";

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;


  void changepage(int index) {
    setState(() {
      _currentIndex = index;
      
    });
  }

  // List of pages for bottom navigation bar
  List<Widget> pages = [
    Home(),
    Search(),
    Message(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: changepage,
        unselectedItemColor: Color.fromRGBO(147, 120, 255, 0.4),
        selectedItemColor: Color.fromRGBO(147, 120, 255, 1),
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(147, 120, 255, 1)
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/homeicon.png', color: Color.fromRGBO(147, 120, 255, 0.4)),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/searchionc.png'),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/messageicon.png'),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/profileicon.png"),
            label: ""
          )

        ]


      ),
      body: pages[_currentIndex]
      
    );
  }
}