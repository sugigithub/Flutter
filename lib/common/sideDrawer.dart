import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/global_styles.dart';
import '../resources/images.dart';
import '../resources/strings.dart';
import '../common/with_padding.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: DefaultColors.drawerBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Image.asset(
                      Images.profile,
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(Strings.myPrepaid,
                      style: GlobalStyles.of(context).detailText),
                  Text(Strings.accountNo,
                      style: Theme.of(context).textTheme.subtitle2),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          WithPadding(
            Column(
              children: <Widget>[
                Text(Strings.recommedned,
                    style: GlobalStyles.of(context).accNoText),
                SizedBox(
                  height: 10,
                ),
                Text(Strings.globeRewards,
                    style: GlobalStyles.of(context).accNoText)
              ],
            ),
          )
        ],
      ),
    );
  }
}
