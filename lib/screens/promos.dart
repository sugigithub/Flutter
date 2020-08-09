import 'package:demo_app/common/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/common/app_bar.dart';
import 'package:demo_app/common/profile_detail.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/data/promos.dart';
import 'package:demo_app/widgets/promos/promos_card.dart';

class Promos extends StatefulWidget {
  // PromosData accountData;
  // List<String> promosType;
  // List<Promo> activeTypeData;
  // String activeType;

  @override
  _PromosState createState() => _PromosState();
}

class _PromosState extends State<Promos> {
  Future<void> myFuture;
  var _isInit = true;
  void changePromo(String type, BuildContext context) {
    _isInit = true;
    var accountData = Provider.of<PromosData>(context, listen: false);
    var promosType = accountData.promosType;
    accountData.changeActiveAccount(promosType.indexOf(type));
  }

  @override
  void initState() {
    super.initState();

    // assign this variable your Future
    // if (_isInit) {

    // _isInit = false;
    // }
    print("init");
  }

  @override
  void didChangeDependencies() {
    print("didchangedependencies");
    if (_isInit) {
      myFuture = Provider.of<PromosData>(context).getPromos();
      _isInit = false;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var accountData = Provider.of<PromosData>(context);
    var promosType = accountData.promosType;
    // var activeTypeData = accountData.promos;
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
              child: FutureBuilder(
                  future: myFuture,
                  builder: (context, dataSnapshot) {
                    if (dataSnapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      if (dataSnapshot.error != null) {
                        print(dataSnapshot.error);
                        return Text('An Error occured.');
                      } else {
                        return ListView.builder(
                          padding: const EdgeInsets.all(20),
                          itemBuilder: (_, i) =>
                              PromosCard(accountData.promos[i]),
                          itemCount: accountData.promos.length,
                        );
                      }
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
