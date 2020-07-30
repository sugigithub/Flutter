import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/resources/images.dart';
import 'my_prepaid_card.dart';

class MyPrepaid extends StatelessWidget {
  final List data;
  final Function changeCard;
  final int index;

  MyPrepaid({this.data, this.changeCard, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) => MyPrepaidCard(
          changeCard: () => changeCard(i),
          width: index == i ? 170 : 140,
          height: index == i ? 180 : 160,
          decoration: index == i
              ? BoxDecoration(
                  color: DefaultColors.darkBlue,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(Images.loadblanceBackground),
                    fit: BoxFit.cover,
                  ),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
          data: data[i],
          captionStyle: index == i
              ? Theme.of(context).textTheme.caption
              : GlobalStyles.of(context).altCardcaption,
          amountStyle: index == i
              ? Theme.of(context).textTheme.headline5
              : GlobalStyles.of(context).altCardText,
          validityStyle: index == i
              ? GlobalStyles.of(context).captionMediumWhite
              : GlobalStyles.of(context).altCardValidity,
        ),
        itemCount: data.length,
      ),
    );
  }
}
