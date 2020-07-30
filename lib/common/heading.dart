import 'package:flutter/material.dart';

import 'text_gradient.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/styles/global_styles.dart';

class Heading extends StatelessWidget {
  final String heading;
  final String text;

  Heading({@required this.heading, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextGradient(
            text: heading,
            colors: [DefaultColors.violet, DefaultColors.pink],
          ),
          if (text != null)
            Text(
              text,
              style: GlobalStyles.of(context).viewAllText,
            )
        ],
      ),
    );
  }
}
