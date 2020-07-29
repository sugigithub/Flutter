import 'package:flutter/material.dart';

import 'screens/dashboard.dart';
import 'styles/global_styles.dart';
import 'styles/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalStyles(
      context,
      MaterialApp(
        title: 'Flutter Demo',
        theme: Themes.lightTheme,
        home: Dashboard(),
      ),
    );
  }
}
