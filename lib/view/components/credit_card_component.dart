import 'package:flutter/material.dart';
import '../../controller/animations/fade_animation.dart';

class CreditCard extends StatelessWidget {
  var card_number;
  var card_holder;
  var expires;
  var cvc;

  CreditCard({this.card_number, this.card_holder, this.expires, this.cvc});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.5,
      Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromRGBO(35, 60, 103, 1),
            border: Border.all(width: 1, color: Color(0xFFe0e0e0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2), // changes position of shadow
              )
            ],
          ),
          padding: EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Color.fromRGBO(50, 172, 121, 1),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Text(
                    "VISA",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                card_number,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "CARD HOLDER",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue[100],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                      Text(
                        card_holder,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[100],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "EXPIRES",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue[100],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                      Text(
                        expires,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[100],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "CVV",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue[100],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                      Text(
                        cvc,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[100],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
