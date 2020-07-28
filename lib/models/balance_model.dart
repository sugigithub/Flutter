import 'package:flutter/material.dart';

import 'recommended.dart';

class BalanceModel {
  final String image;
  final String text;
  final String amount;
  final String validity;
  final List<RecommendedModel> recommended;

  const BalanceModel(
      {@required this.image,
      @required this.text,
      @required this.amount,
      @required this.validity,
      @required this.recommended});
}
