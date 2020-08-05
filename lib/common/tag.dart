import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';

class Tag extends StatelessWidget {
  final String text;
  Tag(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(1, 0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(text),
        ),
        height: 20,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(7),
              bottomLeft: Radius.circular(7),
            ),
            color: DefaultColors.lightGreen),
      ),
    );
  }
}
