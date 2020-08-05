import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/models/recommended.dart';
import 'package:demo_app/common/tag.dart';

class RecommendedCard extends StatelessWidget {
  final double width;
  final RecommendedModel data;

  RecommendedCard({
    @required this.width,
    @required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: DefaultColors.darkBlue,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            data.newTag
                ? Tag('new')
                : SizedBox(
                    height: 20,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FittedBox(
                    child: Text(
                      data.heading,
                      style: GlobalStyles.of(context).detailText,
                    ),
                  ),
                  FittedBox(
                    child: Text(data.text,
                        style: GlobalStyles.of(context).captionSemiBold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
