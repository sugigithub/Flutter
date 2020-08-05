import 'package:flutter/material.dart';

import 'package:demo_app/common/rich_text.dart';
import 'package:demo_app/models/promos.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/styles/global_styles.dart';

class PromoDetail extends StatelessWidget {
  final Promo data;
  PromoDetail(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 110,
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [DefaultColors.paleGreen, DefaultColors.paleGreen1],
          stops: [0.5, 0.9],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichTextComp(
            [
              {
                'text': '${data.plan} ',
                'style': GlobalStyles.of(context).promosTitle,
              },
              {
                'text': Strings.data,
                'style': GlobalStyles.of(context).promosTitle1
              },
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'P ${data.amount}',
            style: GlobalStyles.of(context).promosAmount,
          ),
          RichTextComp(
            [
              {
                'text': '${data.validity} ',
                'style': GlobalStyles.of(context).promosValidity,
              },
              {
                'text': Strings.days,
                'style': GlobalStyles.of(context).promosValidity1
              },
            ],
          ),
        ],
      ),
    );
  }
}
