import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class NewTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(1, 0),
      child: Container(
        child: Center(child: Text('new')),
        width: 40,
        height: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(7), bottomLeft: Radius.circular(7)),
            color: DefaultColors.lightGreen),
      ),
    );
  }
}
