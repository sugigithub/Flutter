import 'package:flutter/material.dart';

import 'package:demo_app/models/balance_model.dart';

class MyPrepaidCard extends StatelessWidget {
  final Function changeCard;
  final double width;
  final double height;
  final BalanceModel data;
  final Decoration decoration;
  final TextStyle captionStyle;
  final TextStyle amountStyle;
  final TextStyle validityStyle;

  MyPrepaidCard({
    @required this.changeCard,
    @required this.width,
    @required this.height,
    @required this.decoration,
    @required this.data,
    @required this.captionStyle,
    @required this.amountStyle,
    @required this.validityStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: changeCard,
        child: Container(
          width: width,
          height: height,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 0,
            child: Container(
              decoration: decoration,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    data.image,
                    fit: BoxFit.cover,
                    height: 22,
                    width: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          data.text,
                          style: captionStyle,
                        ),
                        SizedBox(height: 5),
                        Text(data.amount, style: amountStyle),
                      ],
                    ),
                  ),
                  Text(data.validity, style: validityStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
