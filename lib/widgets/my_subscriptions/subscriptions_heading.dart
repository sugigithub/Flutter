import 'package:flutter/material.dart';

import 'package:demo_app/styles/global_styles.dart';
import '../../common/with_padding.dart';
import '../../styles/colors.dart';
import '../../resources/strings.dart';
import '../../common/text_gradient.dart';

class SubscriptionsHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WithPadding(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Strings.mySubscriptions,
            style: GlobalStyles.of(context).captionSemiBold,
          ),
          SizedBox(
            height: 20,
          ),
          TextGradient(
            colors: [DefaultColors.violet, DefaultColors.pink],
            text: Strings.netflix,
          ),
          TextGradient(
            colors: [DefaultColors.violet, DefaultColors.pink],
            text: Strings.netflix1,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
