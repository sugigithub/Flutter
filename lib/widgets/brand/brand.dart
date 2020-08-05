import 'package:flutter/material.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/data/brand_data.dart';
import 'package:demo_app/common/with_padding.dart';
import 'brabd_card.dart';

class Brand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          Text(
            Strings.hereIsWhatYouCanGet,
            style: GlobalStyles.of(context).brandTitle,
          ),
        ),
        Container(
          height: 195,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: BrandData.length,
            itemBuilder: (_, i) => BrandCard(BrandData[i]),
          ),
        )
      ],
    );
  }
}
