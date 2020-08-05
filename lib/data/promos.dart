import 'package:flutter/cupertino.dart';

import '../models/promos.dart';
import '../resources/strings.dart';

class PromosData with ChangeNotifier {
  int _activeIndex = 0;

  Map<String, List<Promo>> _promosData = {
    Strings.goSAKTO: [
      Promo(
        title: Strings.goSAKTO199,
        plan: Strings.oneGbData,
        amount: 199,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goSAKTO299,
        plan: Strings.twoGbData,
        amount: 299,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goSAKTO599,
        plan: Strings.fiveGbData,
        amount: 599,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goSAKTO999,
        plan: Strings.tenGbData,
        amount: 199,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goSAKTO1999,
        plan: Strings.twentyGbData,
        amount: 1999,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
    ],
    Strings.goSURF: [
      Promo(
        title: Strings.goSURF199,
        plan: Strings.oneGbData,
        amount: 199,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goSURF299,
        plan: Strings.twoGbData,
        amount: 299,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goSURF599,
        plan: Strings.fiveGbData,
        amount: 599,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goSURF999,
        plan: Strings.tenGbData,
        amount: 199,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goSURF1999,
        plan: Strings.twentyGbData,
        amount: 1999,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
    ],
    Strings.goUNLI: [
      Promo(
        title: Strings.goUNLI199,
        plan: Strings.oneGbData,
        amount: 199,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goUNLI299,
        plan: Strings.twoGbData,
        amount: 299,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goUNLI599,
        plan: Strings.fiveGbData,
        amount: 599,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goUNLI999,
        plan: Strings.tenGbData,
        amount: 199,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goUNLI1999,
        plan: Strings.twentyGbData,
        amount: 1999,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
    ],
    Strings.goROAM: [
      Promo(
        title: Strings.goROAM199,
        plan: Strings.oneGbData,
        amount: 199,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goROAM299,
        plan: Strings.twoGbData,
        amount: 299,
        validity: 30,
        description: [
          Strings.appOfChoice,
          Strings.fbAndInsta,
          Strings.goWifi,
          Strings.gCash
        ],
      ),
      Promo(
        title: Strings.goROAM599,
        plan: Strings.fiveGbData,
        amount: 599,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goROAM999,
        plan: Strings.tenGbData,
        amount: 199,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
      Promo(
        title: Strings.goROAM1999,
        plan: Strings.twentyGbData,
        amount: 1999,
        validity: 30,
        description: [Strings.appOfChoice, Strings.fbAndInsta, Strings.goWifi],
      ),
    ]
  };

  List<String> get promosType {
    return _promosData.keys.toList();
  }

  List<Promo> get promos {
    return _promosData.values.toList()[_activeIndex];
  }

  changeActiveAccount(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  String get activeAccount {
    return _promosData.keys.toList()[_activeIndex];
  }
}
