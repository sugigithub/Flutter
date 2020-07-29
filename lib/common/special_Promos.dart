import 'package:flutter/material.dart';

import '../resources/strings.dart';
import '../resources/images.dart';
import 'heading.dart';
import 'container_layout.dart';
import 'with_padding.dart';
import 'twoline_text.dart';

class SpecialPromos extends StatelessWidget {
  final String heading;
  final String backgroungImage;
  final String overlayText;
  final String subHeading;
  final String desc;
  final String caption;

  SpecialPromos(
      {@required this.heading,
      @required this.backgroungImage,
      @required this.overlayText,
      @required this.subHeading,
      @required this.caption,
      @required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 4, bottom: 10),
            child: Heading(isViewAll: false, text: heading),
          ),
          ContainerLayout(
            backgroundImage: backgroungImage,
            width: double.infinity,
            topWidget: <Widget>[
              Text(caption),
              TwoLineText([
                {
                  'text': subHeading,
                  'style': Theme.of(context).textTheme.headline6
                },
                {'text': desc, 'style': Theme.of(context).textTheme.caption}
              ])
            ],
            overlayWidget: Text(overlayText),
          ),
        ],
      ),
    );
  }
}
