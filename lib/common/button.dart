import 'package:flutter/material.dart';

import '../resources/strings.dart';
import '../styles/global_styles.dart';
import '../styles/colors.dart';

class Button extends StatelessWidget {
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
        onPressed: () {
          print("presses");
        },
        child: Text(
          Strings.findOutMore,
          style: GlobalStyles.of(context).btnText,
        ),
      ),
    );
  }
}
