import 'package:flutter/material.dart';
import '../../controller/animations/fade_animation.dart';

class ButtonWallet extends StatelessWidget {
  var text;
  var icon;
  var delay;

  ButtonWallet({this.text, this.icon, this.delay = 0.2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeAnimation(
        delay,
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 245, 248, 1),
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  border: Border.all(width: 1.5, color: Color(0xFFe0e0e0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Icon(
                  icon,
                  color: Colors.blue[900],
                  size: 42,
                ),
                padding: EdgeInsets.all(14),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.blue[100]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
