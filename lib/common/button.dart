import 'package:flutter/material.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/styles/colors.dart';

class Button extends StatelessWidget {
  final String btnText;

  Button(this.btnText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      padding: const EdgeInsets.only(top: 20, bottom: 35, left: 20, right: 20),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: DefaultColors.black, width: 2)),
        color: DefaultColors.white,
        elevation: 0,
        onPressed: () {},
        child: Text(
          Strings.findOutMore,
          style: GlobalStyles.of(context).btnText,
        ),
      ),
    );
  }
}
