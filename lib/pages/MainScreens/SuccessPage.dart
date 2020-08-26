import 'package:flutter/material.dart';
import 'package:somt_user/pages/BottomBar.dart';
import 'package:somt_user/pages/MainScreens/HomePage.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
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
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.check_circle, size: 100, color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  'ORDER CONFIRMED',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Container(
                child: Text('Thanks for using OriginaMilk. Your order has been '),
              ),
            ),
            Container(
              child: Text('successfully placed'),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 50.0,
                child: Material(
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Colors.blue.shade300,
                  color: Colors.blue,
                  elevation: 7.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Back to Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
