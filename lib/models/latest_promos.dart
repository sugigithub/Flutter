import 'package:flutter/material.dart';

class LatestPromos {
  final String icon;
  final String title;
  final String subTitle;
  final double amount;
  final String background;

  const LatestPromos(
      {@required this.icon,
      @required this.title,
      @required this.subTitle,
      @required this.amount,
      @required this.background});
}
