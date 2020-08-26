import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderStatus extends StatefulWidget {
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.withOpacity(0.1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'ORDER STATUS',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.check_circle, color: Colors.blue)),
                      Container(
                        height: 80,
                        width: 2,
                        color: Colors.blue,
                      ),
                      Container(
                          child: Icon(Icons.check_circle, color: Colors.blue)),
                      Container(
                        height: 80,
                        width: 2,
                        color: Colors.blue,
                      ),
                      Container(
                          child: Icon(Icons.check_circle, color: Colors.blue)),
                      Container(
                        height: 80,
                        width: 2,
                        color: Colors.grey,
                      ),
                      Container(
                          child: Icon(Icons.check_circle,
                              color: Colors.grey.shade500)),
                    ],
                  ),

                  //right side content
                  SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
//
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 30,
                                child: Text(
                                  'Order Recieved   ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 20,
                                child: Text(
                                  '6.30 am, jan 31,2019 ',
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 30,
                                child: Text(
                                  'Milking done   ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 20,
                                child: Text(
                                  '6.30 am, jan 31,2019 ',
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 30,
                                child: Text(
                                  'Out for delivery',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 20,
                                child: Text(
                                  '6.30 am, jan 31,2019 ',
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 30,
                                child: Text(
                                  'Delivered',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Container(
                                height: 20,
                                child: Text(
                                  '6.30 am  jan 31,2019 ',
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
//          Padding(
//            padding: const EdgeInsets.only(top: 30, left: 15,right: 15),
//            child: Image.asset("images/trackingimage.jpg", height: 200, width: 200),
//          ),
          ],
        ),
      ),
    );
  }
}
