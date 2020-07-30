import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo_app/resources/images.dart';
import 'package:demo_app/common/app_bar.dart';
import 'package:demo_app/common/sideDrawer.dart';
import 'package:demo_app/widgets/bottom_nav.dart';
import 'package:demo_app/widgets/profile_detail.dart';
import 'package:demo_app/widgets/balance_component/balance_comp.dart';
import 'package:demo_app/common/special_Promos.dart';
import 'package:demo_app/widgets/latest_promos.dart';
import 'package:demo_app/widgets/globe_rewards.dart';
import 'package:demo_app/widgets/brand.dart';
import 'package:demo_app/common/button.dart';
import 'package:demo_app/widgets/my_subscriptions/my_subscriptions.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/data/user_account.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedPage = 0;
  List<Map<String, dynamic>> bottomNav = [
    {'asset': Images.icon, 'title': 'Mobile'},
    {'asset': Images.loadbalance3, 'title': 'Lifestyle'},
    {'asset': Images.wallet, 'title': 'Wallet'},
    {'asset': Images.menu, 'title': 'More'},
  ];

  void onClickFooter(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccountData(),
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: SideDrawer(),
        body: SingleChildScrollView(
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
        ),
        bottomNavigationBar: BottomNav(
            bottomNav: bottomNav,
            onClickFooter: onClickFooter,
            selectedIndex: _selectedPage),
      ),
    );
  }
}
