import 'package:flutter/material.dart';

import '../resources/strings.dart';
import '../styles/global_styles.dart';
import '../data/brand_data.dart';
import '../common/rich_text.dart';
import '../common/cards_layout.dart';
import '../common/card_builder.dart';

class Brand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      heading: Text(
        Strings.hereIsWhatYouCanGet,
        style: GlobalStyles.of(context).brandTitle,
      ),
      height: 195,
      card: (_, i) => CardsLayout(
        height: 180,
        width: 165,
        backgroundImage: BrandData[i].background,
        widgets: <Widget>[
          Image.asset(
            BrandData[i].brandIcon,
            fit: BoxFit.cover,
            height: 32,
            width: 70,
          ),
          RichTextComp([
            {
              'text': BrandData[i].title,
              'style': Theme.of(context).textTheme.bodyText1
            },
            {'text': ' Pts', 'style': GlobalStyles.of(context).brandText},
          ]),
          Text(
            BrandData[i].subTitle,
            style: GlobalStyles.of(context).brandText,
            softWrap: true,
          )
        ],
      ),
      count: BrandData.length,
    );
  }
}
