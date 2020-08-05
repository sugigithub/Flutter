import 'package:flutter/material.dart';

import 'package:demo_app/common/rich_text.dart';
import 'package:demo_app/models/you_may_like_model.dart';
import 'package:demo_app/styles/global_styles.dart';

class YouMayLikeCard extends StatelessWidget {
  final double width;
  final YouMayLike data;

  YouMayLikeCard({@required this.width, @required this.data});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      color: data.color,
      child: Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Center(
                  child: Image.asset(
                    data.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(data.subscribe),
                    RichTextComp([
                      {
                        'text': 'P ${data.amount} ',
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
            ),
          ],
        ),
      ),
    );
  }
}
