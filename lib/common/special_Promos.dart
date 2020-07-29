import 'package:flutter/material.dart';

import 'heading.dart';
import 'twoline_text.dart';

class SpecialPromos extends StatelessWidget {
  final String heading;
  final String backgroundImage;
  final String overlayText;
  final String subHeading;
  final String desc;
  final String caption;

  SpecialPromos({
    @required this.heading,
    @required this.backgroundImage,
    @required this.overlayText,
    @required this.subHeading,
    @required this.caption,
    @required this.desc,
  });

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
            child: Heading(heading: heading),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(caption),
                        TwoLineText([
                          {
                            'text': subHeading,
                            'style': Theme.of(context).textTheme.headline6
                          },
                          {
                            'text': desc,
                            'style': Theme.of(context).textTheme.caption
                          }
                        ])
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                    child: Text(overlayText),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
