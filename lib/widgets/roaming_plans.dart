import 'package:flutter/material.dart';

import 'package:demo_app/common/container_layout.dart';
import 'package:demo_app/resources/images.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/common/heading.dart';
import 'package:demo_app/common/twoline_text.dart';

class RoamingPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 4, bottom: 10),
              child: Heading(
                heading: Strings.roamingPlans,
              )),
          ContainerLayout(
            backgroundImage: Images.roamingplan,
            width: double.infinity,
            topWidget: <Widget>[
              const Text(Strings.goSakto),
              TwoLineText([
                {
                  'text': Strings.planingForForeignTrip,
                  'style': Theme.of(context).textTheme.headline6
                },
                {
                  'text': Strings.roamWorryFree,
                  'style': Theme.of(context).textTheme.caption
                }
              ])
            ],
            overlayWidget: const Text(Strings.exploreRoamingPacks),
          ),
        ],
      ),
    );
  }
}
