import 'package:flutter/material.dart';

class Reusuablecard extends StatelessWidget {
  Reusuablecard({@required this.colour, this.cardchild});
  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}

class kReusableDrawerTile extends StatelessWidget {
  kReusableDrawerTile(
      {@required this.leadingicon, @required this.name, @required this.onTap});
  Icon leadingicon;
  String name;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leadingicon,
      title: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
