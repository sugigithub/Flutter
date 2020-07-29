import 'package:flutter/material.dart';

import '../common/with_padding.dart';
import 'subscription_title.dart';

class MoviePoster extends StatelessWidget {
  final List<String> data;
  final String image;
  final String text;

  MoviePoster({@required this.data, @required this.image, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          SubscriptionTitle(
            image: image,
            text: text,
          ),
        ),
        Container(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: data.length,
            itemBuilder: (_, i) => Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                data[i],
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
