import 'package:flutter/material.dart';


///////colors of order page
const kbottomcontainerhgt = 60.0;
const kcardclr = Colors.white;
const kinactivecardclr = Color(0xFF111328);
const kbottomclr = Color(0xFFEB1555);

const klabeltextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);
const knumbertextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
  color: Colors.blue,
);
const klargetextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
//////colors pf order page


final double kdrawerfontsize = 20;
final double Kborderradius = 20;

final Container container = Container(
  height: 100,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(Kborderradius),
    ),
  ),
  child: Center(
    child: Text(
      'Click to Order Your Milk',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
);

final Card card = Card(
  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
  child: Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
      leading: Column(
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 40,
          ),
          Text(
            '18 April 2020',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      title: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '''Your milk has been delivered ''',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    '7:30 am, Monday',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
//
        ],
      ),
    ),
  ),
);

final Card milking = Card(
  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
  child: Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
      leading: Column(
        children: <Widget>[
          Icon(
            Icons.local_drink,
            color: Colors.blue,
            size: 40,
          ),
          Text(
            '18 April 2020',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      title: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '''Milking process has been started ''',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    '6:00 am, Monday',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

final Card delivery = Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
  child: Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
      leading: Column(
        children: <Widget>[
          Icon(
            Icons.directions_bike,
            color: Colors.blue,
            size: 40,
          ),
          Text(
            '18 April 2020',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      title: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '''Your milk is packed and out for''',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  child: Text(
                    'delivery',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    '6:30 am, Monday',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

final Card ordered = Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
  child: Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
      leading: Column(
        children: <Widget>[
          Icon(
            Icons.bookmark_border,
            color: Colors.blue,
            size: 40,
          ),
          Text(
            '17 April 2020',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      title: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'Your Order has been approved',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    '4:00 pm, Sunday',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

final Row order = Row(
  children: <Widget>[
    Container(
      child: Text('Your Id : '),
    ),
    SizedBox(
      width: 20,
    ),
    Container(
      child: Text('#CS5223'),
    ),
  ],
);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter password',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
  border: OutlineInputBorder(),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
);

String Settings;