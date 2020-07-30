import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/common/movie_poster.dart';
import 'package:demo_app/data/movies.dart';
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
          ...moviesData.map((movie) => MoviePoster(
                data: movie.moviePoster,
                image: movie.titleImage,
                text: movie.title,
              )),
          YouMayLike(),
        ],
      ),
    );
  }
}
