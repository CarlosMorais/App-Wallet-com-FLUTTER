import 'package:flutter/material.dart';
import '../../model/dao/transaction_user.dart';
import '../../controller/animations/fade_animation.dart';

class TransactionBlock extends StatelessWidget {
  var title = "";
  var list;

  TransactionBlock({this.title, this.list});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.01,
      Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 5, top: 10),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[500]),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
          ),
          TransactionUser(list),
        ],
      ),
    );
  }
}
