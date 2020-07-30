import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo_app/data/user_account.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/resources/images.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/common/with_padding.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var accountData = Provider.of<AccountData>(context);
    var activeAccount = accountData.activeAccount;

    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
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
                  Text(activeAccount.accountName,
                      style: GlobalStyles.of(context).detailText),
                  Text(activeAccount.accountNo,
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
