import 'package:demo_app/models/user_account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo_app/resources/images.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/widgets/popup/switch_account.dart';
import 'package:demo_app/data/user_account.dart';

class ProfileDetail extends StatefulWidget {
  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  UserAccount activeAccount;
  AccountData accountData;
  List<UserAccount> accounts;

  @override
  void initState() {
    super.initState();
  }

  void _changeAccount(int index) {
    print(index);
    Navigator.of(context).pop();
    activeAccount = accountData.changeActiveAccount(index);
  }

  void _openModel() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SwitchAccount(activeAccount, _changeAccount, accounts);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    accountData = Provider.of<AccountData>(context);
    accounts = accountData.accountData;
    activeAccount = accountData.activeAccount;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: InkWell(
        onTap: () => _openModel(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              activeAccount.accountName,
              style: GlobalStyles.of(context).captionMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: Row(
                    children: <Widget>[
                      Text(
                        activeAccount.accountNo,
                        style: GlobalStyles.of(context).accNoText,
                      ),
                      Image.asset(
                        Images.arrowdown,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  Images.add,
                  height: 23,
                  width: 23,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
