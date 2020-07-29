import 'package:demo_app/models/user_account.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../resources/strings.dart';
import '../../styles/global_styles.dart';
import '../../common/twoline_text.dart';
import '../../resources/images.dart';

class SwitchAccount extends StatelessWidget {
  final UserAccount activeAccount;
  final Function changeAccount;
  final List<UserAccount> accounts;

  SwitchAccount(this.activeAccount, this.changeAccount, this.accounts);
  @override
  Widget build(BuildContext context) {
    Widget _buildListItem(UserAccount account) {
      return GestureDetector(
        onTap: () => changeAccount(accounts.indexOf(account)),
        child: Container(
          // height: 70,
          padding: EdgeInsets.symmetric(horizontal: 16),
          color: DefaultColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TwoLineText([
                {
                  'text': account.accountName,
                  'style': GlobalStyles.of(context).popupAccText
                },
                {
                  'text': account.accountNo,
                  'style': GlobalStyles.of(context).popupAccNoText
                },
              ]),
              if (activeAccount == account)
                Image.asset(Images.checked,
                    fit: BoxFit.cover, height: 28, width: 28)
            ],
          ),
        ),
      );
    }

    return SimpleDialog(
      backgroundColor: DefaultColors.lightGrey2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 8),
          color: DefaultColors.lightGrey2,
          child: Text(
            Strings.selectanAccount,
            style: GlobalStyles.of(context).popupText,
          ),
        ),
        ...accounts
            .map(
              (acc) => _buildListItem(acc),
            )
            .toList()

        // _buildListItem(Strings.myPostPaid, Strings.postpaidAccountNo),
      ],
    );
  }
}
