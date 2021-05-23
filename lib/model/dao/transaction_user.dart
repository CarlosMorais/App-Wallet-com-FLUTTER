import 'package:flutter/material.dart';
import 'transaction_list.dart';
import '../entity/transaction.dart';

class TransactionUser extends StatefulWidget {
  String type;

  TransactionUser(this.type);

  @override
  _TransactionUserState createState() => _TransactionUserState(type);
}

class _TransactionUserState extends State<TransactionUser> {
  String type;

  _TransactionUserState(this.type);

  final _transactions = {
    'today': [
      Transaction(
        id: 'c1',
        title: 'Pagamento',
        description: 'Pagamento De Fatura',
        value: 500.05,
        date: DateTime.now().subtract(Duration(days: 0)),
        icon: Icon(
          Icons.attach_money,
          color: Colors.lightBlue[900],
        ),
        color: Colors.green,
      ),
      Transaction(
        id: 'c2',
        title: 'Depósito',
        description: 'Adição De Saldo',
        value: 1000.00,
        date: DateTime.now().subtract(Duration(days: 0)),
        icon: Icon(
          Icons.account_balance,
          color: Colors.lightBlue[900],
        ),
        color: Colors.green,
      ),
    ],
    'last-month': [
      Transaction(
        id: 't2',
        title: 'Alimentação',
        description: 'Burger King',
        value: 35.75,
        date: DateTime.now().subtract(Duration(days: 1)),
        icon: Icon(
          Icons.fastfood,
          color: Colors.lightBlue[900],
        ),
        color: Colors.orange,
      ),
      Transaction(
        id: 't1',
        title: 'Combustível',
        description: 'Posto Ipiranga',
        value: 120.00,
        date: DateTime.now().subtract(Duration(days: 2)),
        icon: Icon(
          Icons.directions_car,
          color: Colors.lightBlue[900],
        ),
        color: Colors.orange,
      ),
      Transaction(
          id: 't3',
          title: 'Alimentação',
          description: "MC Donald's",
          value: 25.25,
          date: DateTime.now().subtract(Duration(days: 3)),
          icon: Icon(
            Icons.fastfood,
            color: Colors.lightBlue[900],
          )),
      Transaction(
        id: 't4',
        title: 'Compra On-line',
        description: 'Mercado Livre',
        value: 350.95,
        date: DateTime.now().subtract(Duration(days: 3)),
        icon: Icon(
          Icons.smartphone,
          color: Colors.lightBlue[900],
        ),
        color: Colors.orange,
      ),
      Transaction(
        id: 't5',
        title: 'Compra On-line',
        description: 'Shopee',
        value: 250.75,
        date: DateTime.now().subtract(Duration(days: 4)),
        icon: Icon(
          Icons.smartphone,
          color: Colors.lightBlue[900],
        ),
        color: Colors.orange,
      ),
      Transaction(
        id: 't6',
        title: 'Compra On-line',
        description: 'Mercado Livre',
        value: 20.75,
        date: DateTime.now().subtract(Duration(days: 4)),
        icon: Icon(
          Icons.smartphone,
          color: Colors.lightBlue[900],
        ),
        color: Colors.orange,
      ),
      Transaction(
        id: 't7',
        title: 'Compra On-line',
        description: 'Shopee',
        value: 150.75,
        date: DateTime.now().subtract(Duration(days: 4)),
        icon: Icon(
          Icons.smartphone,
          color: Colors.lightBlue[900],
        ),
        color: Colors.orange,
      ),
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions[type]),
      ],
    );
  }
}
