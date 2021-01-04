import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Chats.dart';
import 'Appointments.dart';
import 'Doc.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 4;
  List _screens = [
    HomeScreen(),
    ChatsScreen(),
    DocScreen(),
    AppoScreen(),
    ProfileScreen(),

  ];

  BottomNavigationBarItem item() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        size: 30,
      ),);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp( debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor:
            Color.fromRGBO(107, 119, 214, 1),
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _currentIndex = index;

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ), title: Text('', style: TextStyle(fontSize: 0))),

              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    size: 30,
                  ), title: Text('', style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.medical_services_outlined,
                    size: 30,
                  ), title: Text('', style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_today,
                    size: 30,
                  ), title: Text('', style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ), title: Text('', style: TextStyle(fontSize: 0)))
            ],
          ),
          body: _screens[_currentIndex],
        ) );
  }
}