import 'package:flutter/material.dart';

import '../../resources/strings.dart';
import '../../styles/colors.dart';
import '../../styles/global_styles.dart';
import 'new_tag.dart';
import '../../models/recommended.dart';
import '../../common/with_padding.dart';

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
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 15),
              itemCount: data.length,
              itemBuilder: (_, i) => Container(
                width: 180,
                // color: DefaultColors.darkBlue,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: DefaultColors.darkBlue,
                  elevation: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      data[i].newTag
                          ? NewTag()
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
                                data[i].heading,
                                style: GlobalStyles.of(context).detailText,
                              ),
                            ),
                            FittedBox(
                              child: Text(data[i].text,
                                  style:
                                      GlobalStyles.of(context).captionSemiBold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]);
  }
}
