import 'package:demo_app/data/events_data.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/routes.dart';
import 'package:provider/provider.dart';
import 'screens/dashboard.dart';
import 'styles/global_styles.dart';
import 'styles/themes.dart';
import 'package:demo_app/screens/promos.dart';
import 'package:demo_app/data/user_account.dart';
import 'package:demo_app/data/promos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AccountData()),
        ChangeNotifierProvider.value(value: PromosData()),
        ChangeNotifierProvider.value(value: EventsData()),
      ],
      child: GlobalStyles(
        context,
        MaterialApp(
          title: 'Demo',
          theme: Themes.lightTheme,
          // home: Promos(),
          // home: Dashboard(),
          routes: Routes.routes,
          initialRoute: Routes.initialRoute,
        ),
      ),
    );
  }
}
