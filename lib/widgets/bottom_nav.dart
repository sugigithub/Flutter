import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/global_styles.dart';

class BottomNav extends StatelessWidget {
  final List<Map<String, dynamic>> bottomNav;
  final Function onClickFooter;
  final int selectedIndex;

  BottomNav(
      {Key key,
      @required this.bottomNav,
      @required this.onClickFooter,
      @required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // selectedItemColor: Theme.of(context).accentColor,
      currentIndex: selectedIndex,
      onTap: onClickFooter,
      type: BottomNavigationBarType.fixed,
      backgroundColor: DefaultColors.white,
      items: bottomNav.map((item) {
        return BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              item['asset'],
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
          ),
          title: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: selectedIndex == bottomNav.indexOf(item)
                    ? DefaultColors.footerSelected
                    : DefaultColors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              item['title'],
              style: GlobalStyles.of(context).recommendedText,
            ),
          ),
        );
      }).toList(),
    );
  }
}
