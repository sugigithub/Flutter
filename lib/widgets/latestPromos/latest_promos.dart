import 'package:flutter/material.dart';

import 'package:demo_app/data/latest_promos_data.dart';
import 'package:demo_app/common/heading.dart';
import 'package:demo_app/common/with_padding.dart';
import 'package:demo_app/resources/strings.dart';
import 'latest_promos_card.dart';

class LatestPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          Heading(heading: Strings.latestPromos, text: Strings.viewAll),
        ),
        Container(
          height: 215,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: LatestPromosData.length,
            itemBuilder: (_, i) => LatestPromosCard(LatestPromosData[i]),
          ),
        )
      ],
    );
  }
}
