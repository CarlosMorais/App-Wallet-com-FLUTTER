import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final String description;
  final double value;
  final DateTime date;
  final Icon icon;
  final Color color;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.value,
    @required this.date,
    @required this.icon,
    this.color = Colors.orange,
  });
}
