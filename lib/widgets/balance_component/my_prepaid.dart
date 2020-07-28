import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/global_styles.dart';
import '../../resources/images.dart';
import '../../common/twoline_text.dart';

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
        itemBuilder: (_, i) {
          return Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: () {
                changeCard(i);
              },
              child: Container(
                width: index == i ? 170 : 140,
                height: index == i ? 180 : 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 0,
                  child: Container(
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
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset(
                          data[i].image,
                          fit: BoxFit.cover,
                          height: 22,
                          width: 22,
                        ),
                        TwoLineText([
                          {
                            'text': data[i].text,
                            'style': index == i
                                ? Theme.of(context).textTheme.caption
                                : GlobalStyles.of(context).altCardcaption
                          },
                          {
                            'text': data[i].amount,
                            'style': index == i
                                ? Theme.of(context).textTheme.headline5
                                : GlobalStyles.of(context).altCardText,
                          },
                        ]),
                        Text(
                          data[i].validity,
                          style: index == i
                              ? GlobalStyles.of(context).captionMediumWhite
                              : GlobalStyles.of(context).altCardValidity,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
