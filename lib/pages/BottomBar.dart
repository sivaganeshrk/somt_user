import 'package:flutter/material.dart';
import 'package:somt_user/drawer/SideBar.dart';
import 'package:somt_user/pages/MainScreens/HomePage.dart';
import 'package:somt_user/pages/MainScreens/NotificationPage.dart';
import 'package:somt_user/pages/MainScreens/OrderPage.dart';
import 'package:somt_user/pages/MainScreens/OrderStatus.dart';
import 'package:somt_user/pages/MainScreens/ProfilePage.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    // OrderInputPage(),
    OrderPage(),
    OrderStatus(),
    NotificationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text(
          'Origina Milk',
          style: TextStyle(
            //   color: Colors.purple,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            padding: EdgeInsets.all(10),
            icon:Icon(Icons.more_vert),
            onSelected: (value){
              if(value == 'Settings')
                Navigator.popAndPushNamed(context, '/SettingsPage');
            },
          itemBuilder: (context){
              return [
                PopupMenuItem(
                  value: 'Settings',
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.settings,color: Colors.grey,),
                      SizedBox(width: 15,),
                      Text('Settings'),
                    ],
                  ),
                )
              ];
          }
          ),

        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10.0,
        selectedFontSize: 10.0,
        //selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'HOME',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(
              'ORDER',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            //  backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed),
            title: Text(
              'TRACK',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            //   backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              'NOTIFICATIONS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text(
              'PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            //   backgroundColor: Colors.black,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ),
      drawer: SideBar(),
    );
  }
}
