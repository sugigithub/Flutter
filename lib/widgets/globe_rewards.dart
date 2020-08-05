import 'package:flutter/material.dart';

import 'package:demo_app/common/heading.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/resources/images.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/common/rich_text.dart';

class GlobeRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Heading(
            heading: Strings.globeRewards,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 15),
            height: 85,
            decoration: const BoxDecoration(
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
