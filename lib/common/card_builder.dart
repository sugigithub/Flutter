import 'package:flutter/material.dart';

import 'package:demo_app/common/with_padding.dart';

/// builds a list of cards with heading

class CardBuilder extends StatelessWidget {
  final Widget heading;
  final double height;
  final Function card;
  final int count;

  CardBuilder(
      {@required this.heading,
      @required this.height,
      @required this.card,
      @required this.count});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          heading,
        ),
        Container(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: count,
            itemBuilder: card,
          ),
        )
      ],
    );
  }
}
