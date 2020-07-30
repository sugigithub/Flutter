import 'package:demo_app/models/balance_model.dart';
import 'package:demo_app/resources/images.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/models/recommended.dart';

const Balance_data = [
  BalanceModel(
      amount: 'P 1675.00',
      image: Images.loadbalance,
      text: Strings.loadBalance,
      validity: Strings.validTill,
      recommended: [
        RecommendedModel(
          heading: Strings.goUNLI150,
          newTag: false,
          text: Strings.goUNLI150Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: true,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI150,
          newTag: false,
          text: Strings.goUNLI150Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: true,
          text: Strings.goUNLI400Data,
        ),
      ]),
  BalanceModel(
      amount: 'P 500.00',
      image: Images.netflixSmall,
      text: Strings.loadBalance,
      validity: Strings.validTill,
      recommended: [
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: true,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: false,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: true,
          text: Strings.goUNLI400Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: true,
          text: Strings.goUNLI400Data,
        ),
      ]),
  BalanceModel(
      amount: '1.5 GB',
      image: Images.dataBalance,
      text: Strings.dataBalance,
      validity: 'of 12 GB',
      recommended: [
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: false,
          text: Strings.goUNLI400Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: true,
          text: Strings.goUNLI400Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI150,
          newTag: false,
          text: Strings.goUNLI150Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: true,
          text: Strings.goUNLI250Data,
        ),
      ]),
  BalanceModel(
      amount: 'P 570.00',
      image: Images.loadbalance,
      text: Strings.loadBalance,
      validity: Strings.validTill,
      recommended: [
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: true,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: true,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: true,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: false,
          text: Strings.goUNLI400Data,
        ),
      ]),
  BalanceModel(
      amount: 'P 570.00',
      image: Images.netflixSmall,
      text: Strings.loadBalance,
      validity: Strings.validTill,
      recommended: [
        RecommendedModel(
          heading: Strings.goUNLI150,
          newTag: true,
          text: Strings.goUNLI150Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI250,
          newTag: false,
          text: Strings.goUNLI250Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI150,
          newTag: true,
          text: Strings.goUNLI150Data,
        ),
        RecommendedModel(
          heading: Strings.goUNLI400,
          newTag: false,
          text: Strings.goUNLI400Data,
        ),
      ]),
];
