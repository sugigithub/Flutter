import 'package:flutter/material.dart';

import '../common/container_layout.dart';
import '../data/latest_promos_data.dart';
import '../common/rich_text.dart';
import '../styles/global_styles.dart';
import '../common/card_builder.dart';
import '../common/heading.dart';
import '../resources/strings.dart';

class LatestPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      heading: Heading(text: Strings.latestPromos, isViewAll: true),
      height: 215,
      card: (_, i) => ContainerLayout(
        backgroundImage: LatestPromosData[i].background,
        width: 160,
        widgetOne: <Widget>[
          Image.asset(
            LatestPromosData[i].icon,
            fit: BoxFit.cover,
            height: 20,
            width: 20,
          ),
          SizedBox(height: 20),
          RichTextComp(
            [
              {
                'text': LatestPromosData[i].title.split(' ').elementAt(0),
                'style': Theme.of(context).textTheme.subtitle2
              },
              {
                'text': ' ${LatestPromosData[i].title.split(' ').elementAt(1)}',
                'style': GlobalStyles.of(context).subTitleMedium
              },
            ],
          ),
        ],
        widgetTwo: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(LatestPromosData[i].subTitle),
            RichTextComp([
              {
                'text': 'P ${LatestPromosData[i].amount.toStringAsFixed(2)} ',
                'style': GlobalStyles.of(context).subTitleMedium,
              },
              {
                'text': '/m',
                'style': Theme.of(context).textTheme.overline,
              }
            ]),
          ],
        ),
      ),
      count: LatestPromosData.length,
    );
  }
}
