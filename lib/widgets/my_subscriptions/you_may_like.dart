import 'package:flutter/material.dart';

import '../../data/you_may_like_data.dart';
import '../../resources/strings.dart';
import '../../styles/global_styles.dart';
import '../../common/rich_text.dart';
import '../../common/card_builder.dart';

class YouMayLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardBuilder(
        heading: Text(Strings.youMightAlsoLike,
            style: GlobalStyles.of(context).captionSemiBold),
        height: 216,
        card: (_, i) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              color: YouMayLikeData[i].color,
              child: Container(
                width: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Center(
                          child: Image.asset(
                            YouMayLikeData[i].image,
                            fit: BoxFit.cover,
                            // height: 35,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            left: 20, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(YouMayLikeData[i].subscribe),
                            RichTextComp([
                              {
                                'text': 'P ${YouMayLikeData[i].amount} ',
                                'style':
                                    GlobalStyles.of(context).subTitleMedium,
                              },
                              {
                                'text': '/m',
                                'style': Theme.of(context).textTheme.overline,
                              }
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        count: YouMayLikeData.length);
  }
}
