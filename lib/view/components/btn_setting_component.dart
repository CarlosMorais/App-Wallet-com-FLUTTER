import 'package:flutter/material.dart';
import '../../controller/animations/fade_animation.dart';

class ButtonSetting extends StatelessWidget {
  var title = "";
  var icon;

  ButtonSetting({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.05,
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
        margin: EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(width: 1.5, color: Color(0xFFe0e0e0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.lightBlue[900],
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.grey[700]),
                )
              ],
            ),
            Switch(
              value: true,
              activeColor: Color.fromRGBO(50, 172, 121, 1),
              onChanged: (_) {},
            )
          ],
        ),
      ),
    );
  }
}
