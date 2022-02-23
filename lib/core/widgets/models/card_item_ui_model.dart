import 'package:flutter/cupertino.dart';

class CardItem {
  final String last4;
  final String name;
  final int expMonth;
  final int expYear;
  final String formattedAmount;
  final Color backgroundColor;

  CardItem({
    required this.last4,
    required this.name,
    required this.expMonth,
    required this.expYear,
    required this.formattedAmount,
    required this.backgroundColor,
  });
}
