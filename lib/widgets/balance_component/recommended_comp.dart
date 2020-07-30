import 'package:flutter/material.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'new_tag.dart';
import 'package:demo_app/models/recommended.dart';
import 'package:demo_app/common/with_padding.dart';
import 'recommended_card.dart';

class RecommemdedComponent extends StatelessWidget {
  final List<RecommendedModel> data;
  RecommemdedComponent(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                Strings.recommedned,
                style: GlobalStyles.of(context).recommendedText,
              ),
              Text(
                Strings.viewAll,
                style: GlobalStyles.of(context).viewAllText,
              )
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: data.length,
            itemBuilder: (_, i) => RecommendedCard(
              width: 180,
              data: data[i],
              widget: data[i].newTag
                  ? NewTag()
                  : SizedBox(
                      height: 20,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
