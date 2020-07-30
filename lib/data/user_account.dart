import 'package:flutter/material.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/models/user_account.dart';

class AccountData with ChangeNotifier {
  int _activeIndex = 0;
  List<UserAccount> _accountData = [
    UserAccount(
      accountName: Strings.myPrepaid,
      accountNo: Strings.accountNo,
    ),
    UserAccount(
      accountName: Strings.myPostPaid,
      accountNo: Strings.postpaidAccountNo,
    ),
  ];

  List<UserAccount> get accountData {
    return [..._accountData];
  }

  changeActiveAccount(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  UserAccount get activeAccount {
    return _accountData.elementAt(_activeIndex);
  }
}
