import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: [0.0, 0.2, 0.4, 0.6, 0.7,0.8,0.9, 1],
                colors: [
                  Color(0xff44a6c6),
                  Color(0xff53adcb),
                  Color(0xff62b4cf),
                  Color(0xff71bbd4),
                  Color(0xffbcdfeb),
                  Color(0xffcbe6ef),
                  Color(0xffdaedf4),
                  Color(0xffe9f5f8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Image(
              height: 300,
              width: 300,
              image: AssetImage('images/origina.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'ORIGINA',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}