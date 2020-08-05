import 'package:flutter/material.dart';

import 'package:demo_app/screens/tabs_screen.dart';
import 'package:demo_app/screens/promos.dart';

class Routes {
  Routes._();
  static const tabsScreen = '/tabsScreen';
  static const promos = '/promos';

  static get routes {
    return {
      tabsScreen: (BuildContext context) => TabsScreen(),
      promos: (BuildContext context) => Promos()
    };
  }

  static get initialRoute {
    return tabsScreen;
  }
}
