import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../resources/strings.dart';
import '../../styles/global_styles.dart';
import '../../common/twoline_text.dart';
import '../../resources/images.dart';

class SwitchAccount extends StatelessWidget {
  final String activeAccount;
  final Function changeAccount;

  SwitchAccount(this.activeAccount, this.changeAccount);
  @override
  Widget build(BuildContext context) {
    Widget _buildListItem(String text, String accNo) {
      return GestureDetector(
        onTap: () => changeAccount(text),
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 16),
          color: DefaultColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TwoLineText([
                {'text': text, 'style': GlobalStyles.of(context).popupAccText},
                {
                  'text': accNo,
                  'style': GlobalStyles.of(context).popupAccNoText
                },
              ]),
              if (activeAccount == text)
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
        _buildListItem(Strings.myPrepaid, Strings.accountNo),
        Divider(
          thickness: 2,
          height: 0,
          endIndent: 16,
          indent: 16,
        ),
        _buildListItem(Strings.myPostPaid, Strings.postpaidAccountNo),
        Divider(
          thickness: 2,
          height: 0,
          endIndent: 16,
          indent: 16,
        ),
      ],
    );
  }
}
