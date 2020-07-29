import 'package:flutter/material.dart';

import '../common/card_builder.dart';
import 'subscription_title.dart';

class MoviePoster extends StatelessWidget {
  final List<String> data;
  final String image;
  final String text;

  MoviePoster({@required this.data, @required this.image, @required this.text});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
        heading: SubscriptionTitle(
          image: image,
          text: text,
        ),
        height: 220,
        card: (_, i) => Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                data[i],
                fit: BoxFit.cover,
              ),
            ),
        count: data.length);
  }
}
