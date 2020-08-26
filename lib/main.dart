import 'package:flutter/material.dart';
import 'file:///C:/Users/vishnuvarshan/AndroidStudioProjects/somt_user/lib/pages/BottomBar.dart';
import 'package:somt_user/pages/MainScreens/HomePage.dart';
import 'package:somt_user/pages/MainScreens/NotificationPage.dart';
import 'package:somt_user/settings/SettingsPage.dart';
import 'pages/SplashScreen.dart';
import 'pages/authentication/LoginScreen.dart';
import 'pages/authentication/RegisterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/BottomBar',
      routes: {
        '/SplashScreen': (context) => SplashScreen(),
        '/LoginPage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage(),
        '/Homepage': (context) => HomePage(),
        '/NotificationPage': (context)=> NotificationPage(),
        '/BottomBar': (context)=> BottomBar(),
        '/SettingsPage': (context)=> SettingsPage(),
      },
    );
  }
}