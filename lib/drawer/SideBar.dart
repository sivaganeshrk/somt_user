import 'package:flutter/material.dart';
import 'package:somt_user/Constants/Constants.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10),
                  Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    child: ClipOval(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSHuKITpC8MyMdRpaAHlZt0fc3qBs0D7qU0TR3bSXaq_wvzHfmC&usqp=CAU',
                          width: 75,
                          height: 75),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Origina Milk',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.assignment_ind, size: 29),
                  title: Text(
                    'My Cow',
                    style: TextStyle(fontSize: kdrawerfontsize),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'About Us',
                    style: TextStyle(fontSize: kdrawerfontsize),
                  ),
                leading: Icon(Icons.description, size: 29),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.of(context).pop();
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => about()),
//                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Contact Us',
                    style: TextStyle(fontSize: kdrawerfontsize),
                  ),
                  leading: Icon(Icons.phone, size: 29),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.of(context).pop();
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => contact()),
//                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'FAQ',
                    style: TextStyle(fontSize: kdrawerfontsize),
                  ),
                 leading: Icon(Icons.help, size: 29),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.of(context).pop();
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => faq()),
//                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Log Out',
                    style: TextStyle(fontSize: kdrawerfontsize),
                  ),
                  leading: Icon(Icons.arrow_forward, size: 25.0),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
