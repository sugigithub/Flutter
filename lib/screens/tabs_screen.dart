import 'package:flutter/material.dart';

import 'package:demo_app/common/app_bar.dart';
import 'package:demo_app/resources/images.dart';
import 'package:demo_app/widgets/bottom_nav.dart';
import 'package:demo_app/common/sideDrawer.dart';
import 'package:demo_app/screens/dashboard.dart';
import 'package:demo_app/screens/events_in_globe.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPage = 1;

  final List<Map<String, dynamic>> bottomNav = [
    {'asset': Images.icon, 'title': 'Mobile'},
    {'asset': Images.loadbalance3, 'title': 'Lifestyle'},
    {'asset': Images.wallet, 'title': 'Wallet'},
    {'asset': Images.menu, 'title': 'More'},
  ];

  final List<Widget> pages = [Dashboard(), EventsAtGlobe()];

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
      body: pages[_selectedPage],
      bottomNavigationBar: BottomNav(
        bottomNav: bottomNav,
        onClickFooter: onClickFooter,
        selectedIndex: _selectedPage,
      ),
    );
  }
}
