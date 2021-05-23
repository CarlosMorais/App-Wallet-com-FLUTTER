import 'package:flutter/material.dart';

class ButtonFilterTransaction extends StatelessWidget {
  var text;
  var color;

  ButtonFilterTransaction({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 8,
            backgroundColor: color,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.grey[900]),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[200], blurRadius: 10.0, spreadRadius: 4.5)
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    );
  }
}
