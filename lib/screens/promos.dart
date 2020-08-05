import 'package:demo_app/common/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/common/app_bar.dart';
import 'package:demo_app/widgets/profile_detail.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/data/promos.dart';
import 'package:demo_app/widgets/promos/promos_card.dart';

class Promos extends StatelessWidget {
  // PromosData accountData;
  // List<String> promosType;
  // List<Promo> activeTypeData;
  // String activeType;

  void changePromo(String type, BuildContext context) {
    var accountData = Provider.of<PromosData>(context, listen: false);
    var promosType = accountData.promosType;
    accountData.changeActiveAccount(promosType.indexOf(type));
  }

  @override
  Widget build(BuildContext context) {
    var accountData = Provider.of<PromosData>(context);
    var promosType = accountData.promosType;
    var activeTypeData = accountData.promos;
    var activeType = accountData.activeAccount;
    return Scaffold(
      appBar: CustomAppBar(title: Strings.promos),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ProfileDetail(),
          Tabs(
            onChangePromo: (type) => changePromo(type, context),
            activeType: activeType,
            types: promosType,
          ),
          Expanded(
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: DefaultColors.lightGrey2,
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemBuilder: (_, i) => PromosCard(activeTypeData[i]),
                itemCount: activeTypeData.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
