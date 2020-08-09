import 'package:flutter/material.dart';

class Promo {
  final String title;
  final String plan;
  final int amount;
  final int validity;
  final List<dynamic> description;

  const Promo({
    @required this.title,
    @required this.plan,
    @required this.amount,
    @required this.validity,
    @required this.description,
  });
}
