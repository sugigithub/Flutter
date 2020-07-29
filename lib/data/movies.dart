import '../resources/images.dart';
import '../models/movie_poster.dart';
import '../resources/strings.dart';

final moviesData = [
  MoviePoster(
    moviePoster: [
      Images.reasonsWhy,
      Images.americangod,
      Images.bright,
      Images.hanna,
      Images.jumanji,
      Images.justAddMagic,
      Images.lostinpeace,
    ],
    title: Strings.popularOn,
    titleImage: Images.netflix,
  ),
  MoviePoster(
    moviePoster: [
      Images.moneyheist,
      Images.polar,
      Images.riverdale,
      Images.strangerthings,
      Images.terminator,
      Images.youAreWanted,
    ],
    title: Strings.latestOn,
    titleImage: Images.prime,
  )
];
