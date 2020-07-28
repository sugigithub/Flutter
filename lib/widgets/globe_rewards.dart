import 'package:flutter/material.dart';

import '../common/heading.dart';
import '../resources/strings.dart';
import '../resources/images.dart';
import '../styles/global_styles.dart';
import '../styles/colors.dart';
import '../common/rich_text.dart';

class GlobeRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Heading(
            isViewAll: false,
            text: Strings.globeRewards,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 15),
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [DefaultColors.deepYellow, DefaultColors.yellow],
                  stops: [0.0, 0.8]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(Strings.yourRewardPoints.toUpperCase()),
                      RichTextComp([
                        {
                          'text': '7250 ',
                          'style': GlobalStyles.of(context).globeRewardCardText,
                        },
                        {
                          'text': 'Pts',
                          'style': Theme.of(context).textTheme.headline6,
                        }
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Image.asset(
                    Images.globerewards,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
