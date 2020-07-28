import 'package:flutter/material.dart';

class RecommendedModel {
  final String heading;
  final String text;
  final bool newTag;

  const RecommendedModel({
    @required this.heading,
    @required this.text,
    @required this.newTag,
  });
}
