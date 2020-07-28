import 'package:flutter/material.dart';

import '../../resources/strings.dart';
import '../../styles/colors.dart';
import '../../resources/images.dart';
import '../../common/movie_poster.dart';
import '../../data/movies.dart';
import 'you_may_like.dart';
import 'subscriptions_heading.dart';

class MySubscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(15)),
        color: DefaultColors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SubscriptionsHeading(),
          MoviePoster(
            data: moviesData[0]['amazon'],
            image: Images.netflix,
            text: Strings.popularOn,
          ),
          MoviePoster(
            data: moviesData[1]['amazon'],
            image: Images.prime,
            text: Strings.latestOn,
          ),
          YouMayLike(),
        ],
      ),
    );
  }
}
