import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/data/balance_data.dart';
import 'recommended_comp.dart';
import 'my_prepaid.dart';

class BalanceComponent extends StatefulWidget {
  @override
  _BalanceComponentState createState() => _BalanceComponentState();
}

class _BalanceComponentState extends State<BalanceComponent> {
  var index = 0;

  void changeCard(i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(15),
          right: Radius.circular(15),
        ),
        color: DefaultColors.paleGray,
      ),
      child: Column(
        children: <Widget>[
          MyPrepaid(
            data: Balance_data,
            index: index,
            changeCard: changeCard,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 122,
            child: RecommemdedComponent(Balance_data[index].recommended),
          ),
        ],
      ),
    );
  }
}
