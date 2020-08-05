import 'package:demo_app/models/user_account.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/resources/images.dart';

class SwitchAccount extends StatelessWidget {
  final UserAccount activeAccount;
  final Function changeAccount;
  final List<UserAccount> accounts;

  SwitchAccount(
    this.activeAccount,
    this.changeAccount,
    this.accounts,
  );

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: DefaultColors.lightGrey2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 8),
          color: DefaultColors.lightGrey2,
          child: Text(
            Strings.selectanAccount,
            style: GlobalStyles.of(context).popupText,
          ),
        ),
        ...accounts
            .map(
              (acc) => _buildListItem(acc, context),
            )
            .toList()
      ],
    );
  }

  Widget _buildListItem(UserAccount account, BuildContext context) {
    return GestureDetector(
      onTap: () => changeAccount(accounts.indexOf(account)),
      child: Container(
        // height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: DefaultColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    account.accountName,
                    style: GlobalStyles.of(context).popupAccText,
                  ),
                  SizedBox(height: 5),
                  Text(account.accountNo,
                      style: GlobalStyles.of(context).popupAccNoText),
                ],
              ),
            ),
            if (activeAccount == account)
              Image.asset(Images.checked,
                  fit: BoxFit.cover, height: 28, width: 28)
          ],
        ),
      ),
    );
  }
}
