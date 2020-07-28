import 'package:flutter/material.dart';

import './colors.dart';

class Themes {
  Themes._();
  static final ThemeData lightTheme = getLightTheme();
  static final ThemeData lightBaseTheme = ThemeData.light();
  static ThemeData getLightTheme() {
    return ThemeData(
      fontFamily: 'AvenirNext',
      scaffoldBackgroundColor: DefaultColors.white,
      primaryColor: DefaultColors.drawerBlue,
      accentColor: DefaultColors.black,
      bottomAppBarTheme:
          BottomAppBarTheme(color: DefaultColors.white, elevation: 4),
      appBarTheme: AppBarTheme(color: DefaultColors.white),
      textTheme: TextTheme(
        headline6: lightBaseTheme.textTheme.headline6.copyWith(
            fontSize: 18,
            color: DefaultColors.white,
            fontWeight: FontWeight.w700),
        headline5: lightBaseTheme.textTheme.headline5.copyWith(
            fontSize: 22,
            color: DefaultColors.white,
            fontWeight: FontWeight.w700),
        subtitle2: lightBaseTheme.textTheme.subtitle2
            .copyWith(color: DefaultColors.white, fontWeight: FontWeight.w700),
        caption: lightBaseTheme.textTheme.caption
            .copyWith(color: DefaultColors.white, fontWeight: FontWeight.w400),
        bodyText2: lightBaseTheme.textTheme.caption
            .copyWith(color: DefaultColors.white, fontWeight: FontWeight.w600),
        bodyText1: lightBaseTheme.textTheme.bodyText1
            .copyWith(fontWeight: FontWeight.w700, color: DefaultColors.white),
        button: lightBaseTheme.textTheme.button.copyWith(letterSpacing: 0),
        overline: lightBaseTheme.textTheme.button
            .copyWith(color: DefaultColors.white, letterSpacing: 0),
      ).apply(fontFamily: 'AvenirNext'),
    );
  }
}
