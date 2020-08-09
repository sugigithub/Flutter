import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/promos.dart';
import '../resources/strings.dart';

class PromosData with ChangeNotifier {
  int _activeIndex = 0;

  var _promoTypes = [
    Strings.goSAKTO,
    Strings.goSURF,
    Strings.goUNLI,
    Strings.goROAM
  ];

  List<Promo> _promoData = [];

  List<String> get promosType {
    return [..._promoTypes];
  }

  Future<void> getPromos() async {
    var promoType = _promoTypes[_activeIndex];
    var type = '${promoType[0].toLowerCase()}${promoType.substring(1)}';
    var url = 'https://flutter-globe.firebaseio.com/promos/$type.json';
    final response = await http.get(
      url,
    );
    _promoData = [];
    var loadedData = json.decode(response.body);
    loadedData.forEach((key, value) {
      _promoData.add(
        Promo(
            amount: value['amount'],
            description: value['description'],
            plan: value['plan'],
            title: value['title'],
            validity: value['validity']),
      );
    });
    notifyListeners();
  }

  List<Promo> get promos {
    return [..._promoData];
  }

  changeActiveAccount(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  String get activeAccount {
    return _promoTypes[_activeIndex];
  }
}
