import 'package:flutter/material.dart';

import 'text_gradient.dart';
import '../resources/strings.dart';
import '../styles/colors.dart';
import '../styles/global_styles.dart';

class Heading extends StatelessWidget {
  final String text;
  final bool isViewAll;

  Heading({@required this.text, @required this.isViewAll});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextGradient(
            text: text,
            colors: [DefaultColors.violet, DefaultColors.pink],
          ),
          if (isViewAll)
            Text(
              Strings.viewAll,
              style: GlobalStyles.of(context).viewAllText,
            )
        ],
      ),
    );
  }
}
