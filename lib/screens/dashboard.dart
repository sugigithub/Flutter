import 'package:flutter/material.dart';

import 'package:demo_app/resources/images.dart';
import 'package:demo_app/widgets/profile_detail.dart';
import 'package:demo_app/widgets/balance_component/balance_comp.dart';
import 'package:demo_app/common/special_Promos.dart';
import 'package:demo_app/widgets/latestPromos/latest_promos.dart';
import 'package:demo_app/widgets/globe_rewards.dart';
import 'package:demo_app/widgets/brand/brand.dart';
import 'package:demo_app/common/button.dart';
import 'package:demo_app/widgets/my_subscriptions/my_subscriptions.dart';
import 'package:demo_app/resources/strings.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            ProfileDetail(),
            BalanceComponent(),
            SpecialPromos(
              heading: Strings.specialPromos,
              backgroundImage: Images.promo,
              overlayText: Strings.createyourownPromo,
              subHeading: Strings.createWhatMatters,
              desc: Strings.promoThatsAllAou,
              caption: Strings.goSakto,
            ),
            LatestPromos(),
            SpecialPromos(
              heading: Strings.roamingPlans,
              backgroundImage: Images.roamingplan,
              overlayText: Strings.exploreRoamingPacks,
              subHeading: Strings.planingForForeignTrip,
              desc: Strings.roamWorryFree,
              caption: Strings.goSakto,
            ),
            GlobeRewards(),
            Brand(),
            Button(Strings.findOutMore),
            MySubscriptions(),
          ],
        ),
      ),
    );
  }
}
