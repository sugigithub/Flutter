import 'package:flutter/material.dart';

import 'package:demo_app/common/rich_text.dart';
import 'package:demo_app/models/latest_promos.dart';
import 'package:demo_app/styles/global_styles.dart';

class LatestPromosCard extends StatelessWidget {
  final LatestPromos data;

  LatestPromosCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
            image: AssetImage(data.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    data.icon,
                    fit: BoxFit.cover,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(height: 20),
                  RichTextComp(
                    [
                      {
                        'text': data.title.split(' ').elementAt(0),
                        'style': Theme.of(context).textTheme.subtitle2
                      },
                      {
                        'text': ' ${data.title.split(' ').elementAt(1)}',
                        'style': GlobalStyles.of(context).subTitleMedium
                      },
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data.subTitle),
                  RichTextComp([
                    {
                      'text': 'P ${data.amount.toStringAsFixed(2)} ',
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
          ],
        ),
      ),
    );
  }
}
