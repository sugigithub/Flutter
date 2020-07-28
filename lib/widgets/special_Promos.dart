import 'package:flutter/material.dart';

import '../resources/strings.dart';
import '../resources/images.dart';
import '../common/heading.dart';
import '../common/container_layout.dart';
import '../common/with_padding.dart';
import '../common/twoline_text.dart';

class SpecialPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 4, bottom: 10),
            child: Heading(
              isViewAll: false,
              text: Strings.specialPromos,
            ),
          ),
          ContainerLayout(
            backgroundImage: Images.promo,
            width: double.infinity,
            widgetOne: <Widget>[
              const Text(Strings.goSakto),
              TwoLineText([
                {
                  'text': Strings.createWhatMatters,
                  'style': Theme.of(context).textTheme.headline6
                },
                {
                  'text': Strings.promoThatsAllAou,
                  'style': Theme.of(context).textTheme.caption
                }
              ])
            ],
            widgetTwo: const Text(Strings.createyourownPromo),
          ),
        ],
      ),
    );
  }
}
