import 'package:flutter/material.dart';

import '../resources/images.dart';
import '../common/app_bar.dart';
import '../common/sideDrawer.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/profile_detail.dart';
import '../widgets/balance_component/balance_comp.dart';
import '../widgets/special_Promos.dart';
import '../widgets/latest_promos.dart';
import '../widgets/roaming_plans.dart';
import '../widgets/globe_rewards.dart';
import '../widgets/brand.dart';
import '../common/button.dart';
import '../widgets/my_subscriptions/my_subscriptions.dart';

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
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              ProfileDetail(),
              BalanceComponent(),
              SpecialPromos(),
              LatestPromos(),
              RoamingPlans(),
              GlobeRewards(),
              Brand(),
              Button(),
              MySubscriptions(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
          bottomNav: bottomNav,
          onClickFooter: onClickFooter,
          selectedIndex: _selectedPage),
    );
  }
}
