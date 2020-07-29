import 'package:flutter/material.dart';

import '../resources/strings.dart';
import '../resources/images.dart';
import '../styles/global_styles.dart';
import '../widgets/popup/switch_account.dart';

class ProfileDetail extends StatefulWidget {
  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  var activeAccount = Strings.myPrepaid;

  void _openModel() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SwitchAccount(activeAccount, _changeAccount);
      },
    );
  }

  void _changeAccount(String type) {
    Navigator.of(context).pop();
    setState(() {
      activeAccount = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: InkWell(
        onTap: _openModel,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              activeAccount,
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
                          activeAccount == Strings.myPrepaid
                              ? '${Strings.accountNo} '
                              : '${Strings.postpaidAccountNo} ',
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
                  // ),
                ]),
          ],
        ),
      ),
    );
  }
}
