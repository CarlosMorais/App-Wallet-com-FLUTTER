import 'package:flutter/material.dart';

class ButtonFilterCard extends StatelessWidget {
  var text;

  ButtonFilterCard({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200], blurRadius: 10.0, spreadRadius: 4.5)
          ]),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(right: 20),
    );
  }
}
