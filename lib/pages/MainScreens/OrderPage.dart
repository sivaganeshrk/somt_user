import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:somt_user/Constants/Constants.dart';
import 'package:somt_user/Constants/reusablecard.dart';
import 'package:somt_user/pages/MainScreens/SuccessPage.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  int quantity = 5;
  int amount = 30;

  String timing = 'Morning';
  DateTime selectedDate = DateTime.now();
  var formatter = DateFormat('dd-MM-yyyy');
  DateTime fromDate =
  DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime toDate =
  DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  Future<DateTime> selectDate(BuildContext context, DateTime _date) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      _date = picked;
    }
    return _date;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Text(
                        'ORDER',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Reusuablecard(
                    colour: kcardclr,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Quantity',
                            style: klabeltextStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              quantity.toString(),
                              style: knumbertextStyle,
                            ),
                            Text(
                              'ltr',
                              style: klabeltextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.blue.shade100,
                            thumbColor: Colors.blue,
                            overlayColor: Colors.blue.shade100,
                            thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 8.0),
                            overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15.0),
                          ),
                          child: Slider(
                            value: quantity.toDouble(),
                            min: 1.0,
                            max: 10.0,
                            onChanged: (double newValue) {
                              setState(() {
                                quantity = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Reusuablecard(
                          colour: kcardclr,
                          cardchild: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'From Date',
                                  style: klabeltextStyle,
                                ),
                                FlatButton(
                                  onPressed: () async {
                                    fromDate =
                                    await selectDate(context, fromDate);
                                    setState(() {});
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '${formatter.format(fromDate)}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 20,
                                        ),
                                      ),
                                      // Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Reusuablecard(
                          colour: kcardclr,
                          cardchild: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'To Date',
                                  style: klabeltextStyle,
                                ),
                                FlatButton(
                                  onPressed: () async {
                                    toDate = await selectDate(context, toDate);
                                    setState(() {});
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '${formatter.format(toDate)}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 20,
                                        ),
                                      ),
                                      //Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Reusuablecard(
                    colour: kcardclr,
                    cardchild: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Timing',
                            style: klabeltextStyle,
                          ),
                          DropdownButton<String>(
                            value: timing,
                            //  icon: Icon(Icons.keyboard_arrow_down),
                            //   iconSize: 30,
                            elevation: 16,
                            style: TextStyle(color: Colors.blueAccent),
                            underline: Container(
                              height: 0,
                              color: Colors.white,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                timing = newValue;
                              });
                            },
                            items: <String>['Morning', 'Evening', 'Both']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Reusuablecard(
                    colour: kcardclr,
                    cardchild: Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Amount',
                                  style: klabeltextStyle,
                                ),
                                Text(
                                  'All charges included *',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            ':',
                            style: klabeltextStyle,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                (quantity * amount).toString(),
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  'Rs',
                                  style: klabeltextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // return object of type Dialog
                                return AlertDialog(
                                  title: Center(
                                      child: Text(
                                        "CONFIRM ORDER",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )),
                                  content:
                                  Text("Please confirm to order your milk !"),
                                  actions: <Widget>[
                                    // usually buttons at the bottom of the dialog
                                    Row(
                                      children: <Widget>[
                                        FlatButton(
                                          child: Text("CONFIRM"),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SuccessPage()),
                                            );
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("CANCEL"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Center(
                            child: Text(
                              'Order Now',
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
          ],
        ),
      ),
    );
  }
}
