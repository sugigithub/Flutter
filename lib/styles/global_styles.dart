import 'package:flutter/material.dart';

import 'colors.dart';

class GlobalStyles extends InheritedWidget {
  final Widget child;
  final BuildContext context;
  GlobalStyles(this.context, this.child);

  TextStyle get subTitleRegular =>
      Theme.of(context).textTheme.subtitle2.copyWith(
          fontWeight: FontWeight.w400,
          color: DefaultColors.white,
          fontFamily: 'AvenirNext');

  TextStyle get subTitleMedium =>
      Theme.of(context).textTheme.subtitle2.copyWith(
          fontWeight: FontWeight.w500,
          color: DefaultColors.white,
          fontFamily: 'AvenirNext');

  TextStyle get subTitleSemiBold =>
      Theme.of(context).textTheme.subtitle2.copyWith(
          fontWeight: FontWeight.w600,
          color: DefaultColors.white,
          fontFamily: 'AvenirNext');

  TextStyle get captionMedium => Theme.of(context).textTheme.caption.copyWith(
      fontWeight: FontWeight.w500,
      color: DefaultColors.greyishBrown,
      fontFamily: 'AvenirNext');

  TextStyle get captionMediumWhite =>
      Theme.of(context).textTheme.caption.copyWith(
          fontWeight: FontWeight.w500,
          color: DefaultColors.white,
          fontFamily: 'AvenirNext');

  TextStyle get accNoText => Theme.of(context).textTheme.bodyText1.copyWith(
      fontWeight: FontWeight.w700,
      color: DefaultColors.black,
      letterSpacing: -0.30,
      height: 1.5,
      fontFamily: 'AvenirNext');

  TextStyle get amountText => Theme.of(context).textTheme.subtitle2.copyWith(
      fontWeight: FontWeight.w600,
      color: DefaultColors.white,
      fontFamily: 'AvenirNext');

  TextStyle get recommendedText => Theme.of(context).textTheme.caption.copyWith(
      fontWeight: FontWeight.w600,
      color: DefaultColors.lightGrey1,
      fontFamily: 'AvenirNext');

  TextStyle get detailText => Theme.of(context).textTheme.overline.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 9,
      color: DefaultColors.white,
      fontFamily: 'AvenirNext',
      letterSpacing: 0);

  TextStyle get newLabel => Theme.of(context).textTheme.overline.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 8,
      color: DefaultColors.white,
      fontFamily: 'AvenirNext');

  TextStyle get captionSemiBold => Theme.of(context).textTheme.caption.copyWith(
      fontWeight: FontWeight.w600,
      color: DefaultColors.white,
      letterSpacing: 0,
      fontFamily: 'AvenirNext');

  TextStyle get viewAllText => Theme.of(context).textTheme.caption.copyWith(
      fontWeight: FontWeight.w600,
      color: DefaultColors.lightBlue,
      fontFamily: 'AvenirNext');

  TextStyle get globeRewardText =>
      Theme.of(context).textTheme.overline.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 11,
          color: DefaultColors.white,
          fontFamily: 'AvenirNext');

  TextStyle get globeRewardCardText =>
      Theme.of(context).textTheme.headline6.copyWith(
          fontWeight: FontWeight.w700,
          color: DefaultColors.white,
          letterSpacing: -0.69,
          fontFamily: 'AvenirNext');

  TextStyle get brandTitle => Theme.of(context).textTheme.bodyText2.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: DefaultColors.textBlue,
      fontFamily: 'AvenirNext');

  TextStyle get brandText => Theme.of(context).textTheme.button.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      letterSpacing: -0.5,
      color: DefaultColors.white,
      fontFamily: 'AvenirNext');

  TextStyle get btnText => Theme.of(context).textTheme.button.copyWith(
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: DefaultColors.black,
      fontFamily: 'AvenirNext');

  TextStyle get altCardText => Theme.of(context).textTheme.headline6.copyWith(
      fontWeight: FontWeight.w600,
      color: DefaultColors.blackLight,
      fontFamily: 'AvenirNext');

  TextStyle get altCardcaption => Theme.of(context).textTheme.caption.copyWith(
      fontWeight: FontWeight.w500,
      color: DefaultColors.blackLight,
      fontFamily: 'AvenirNext');

  TextStyle get altCardValidity => Theme.of(context).textTheme.caption.copyWith(
      fontWeight: FontWeight.w400,
      color: DefaultColors.blackDark,
      fontFamily: 'AvenirNext');

  TextStyle get popupText => Theme.of(context).textTheme.subtitle1.copyWith(
      fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'AvenirNext');

  TextStyle get popupAccText => Theme.of(context)
      .textTheme
      .button
      .copyWith(color: DefaultColors.lightGrey3, fontFamily: 'AvenirNext');

  TextStyle get popupAccNoText =>
      Theme.of(context).textTheme.subtitle2.copyWith(
            color: DefaultColors.black,
            fontFamily: 'AvenirNext',
            fontWeight: FontWeight.w700,
          );

  TextStyle get promosTitle => Theme.of(context).textTheme.subtitle1.copyWith(
      color: DefaultColors.inkBlue,
      fontFamily: 'AvenirNext',
      fontWeight: FontWeight.w700,
      letterSpacing: -0.62);

  TextStyle get promosTitle1 => Theme.of(context).textTheme.subtitle2.copyWith(
      color: DefaultColors.inkBlue,
      fontFamily: 'AvenirNext',
      fontWeight: FontWeight.w700,
      letterSpacing: -0.62);

  TextStyle get promosAmount => Theme.of(context).textTheme.subtitle1.copyWith(
      color: DefaultColors.inkBlue,
      fontFamily: 'AvenirNext',
      fontWeight: FontWeight.w600,
      letterSpacing: -0.62);

  TextStyle get promosValidity => Theme.of(context).textTheme.caption.copyWith(
        color: DefaultColors.inkBlue,
        fontFamily: 'AvenirNext',
        fontWeight: FontWeight.w400,
      );

  TextStyle get promosValidity1 => Theme.of(context).textTheme.caption.copyWith(
        color: DefaultColors.inkBlue,
        fontFamily: 'AvenirNext',
        fontWeight: FontWeight.w600,
      );

  TextStyle get promosdesc => Theme.of(context).textTheme.overline.copyWith(
        color: DefaultColors.darkGrey,
        fontFamily: 'AvenirNext',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.18,
        fontSize: 11,
      );

  TextStyle get promosUnSelected =>
      Theme.of(context).textTheme.caption.copyWith(
            color: DefaultColors.black,
            fontFamily: 'AvenirNext',
            fontWeight: FontWeight.w500,
          );

  TextStyle get pageTitle => Theme.of(context).textTheme.headline6.copyWith(
        color: DefaultColors.black,
        fontFamily: 'AvenirNext',
        fontWeight: FontWeight.w700,
      );
  static GlobalStyles of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobalStyles>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
