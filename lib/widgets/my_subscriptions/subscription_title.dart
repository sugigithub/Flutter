import 'package:flutter/material.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';

class SubscriptionTitle extends StatelessWidget {
  final String text;
  final String image;
  SubscriptionTitle({@required this.text, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              text,
              style: GlobalStyles.of(context).captionSemiBold,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 6.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 22,
                width: 70,
              ),
            ),
          ],
        ),
        Text(
          Strings.viewAll,
          style: GlobalStyles.of(context).viewAllText,
        ),
      ],
    );
  }
}
