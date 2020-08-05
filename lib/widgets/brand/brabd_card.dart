import 'package:flutter/material.dart';

import 'package:demo_app/common/rich_text.dart';
import 'package:demo_app/models/brand_model.dart';
import 'package:demo_app/styles/global_styles.dart';

class BrandCard extends StatelessWidget {
  final BrandModel data;
  BrandCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      child: Container(
        height: 180,
        width: 165,
        padding: const EdgeInsets.only(left: 16, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                data.background,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              data.brandIcon,
              fit: BoxFit.cover,
              height: 32,
              width: 70,
            ),
            RichTextComp([
              {
                'text': data.title,
                'style': Theme.of(context).textTheme.bodyText1
              },
              {'text': ' Pts', 'style': GlobalStyles.of(context).brandText},
            ]),
            Text(
              data.subTitle,
              style: GlobalStyles.of(context).brandText,
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
