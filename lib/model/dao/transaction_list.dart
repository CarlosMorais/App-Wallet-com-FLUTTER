import 'package:flutter/material.dart';
import '../entity/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          final tr = transactions[index];
          return Container(
            margin: EdgeInsets.only(left: 20, top: 5.5, right: 20, bottom: 5.5),
            padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2.5,
                    blurRadius: 2.5,
                    offset: Offset(0.5, 0.5), // changes position of shadow
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: tr.icon,
                  padding: EdgeInsets.all(12),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tr.title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[900]),
                      ),
                      Text(
                        tr.description,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: tr.color),
                    ),
                    Text(
                      DateFormat('d MMM')
                          .format(tr.date.subtract(Duration(days: 1))),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        shrinkWrap: true,
        itemCount: transactions.length,
        padding: EdgeInsets.all(0),
        controller: ScrollController(keepScrollOffset: false),
      ),
    );
  }
}
