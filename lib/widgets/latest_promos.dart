import 'package:flutter/material.dart';

import '../data/latest_promos_data.dart';
import '../common/rich_text.dart';
import '../styles/global_styles.dart';
import '../common/heading.dart';
import '../common/with_padding.dart';
import '../resources/strings.dart';

class LatestPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          Heading(heading: Strings.latestPromos, text: Strings.viewAll),
        ),
        Container(
          height: 215,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: LatestPromosData.length,
            itemBuilder: (_, i) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 0,
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage(LatestPromosData[i].background),
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
                          Image.asset(
                            LatestPromosData[i].icon,
                            fit: BoxFit.cover,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(height: 20),
                          RichTextComp(
                            [
                              {
                                'text': LatestPromosData[i]
                                    .title
                                    .split(' ')
                                    .elementAt(0),
                                'style': Theme.of(context).textTheme.subtitle2
                              },
                              {
                                'text':
                                    ' ${LatestPromosData[i].title.split(' ').elementAt(1)}',
                                'style': GlobalStyles.of(context).subTitleMedium
                              },
                            ],
                          ),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(LatestPromosData[i].subTitle),
                          RichTextComp([
                            {
                              'text':
                                  'P ${LatestPromosData[i].amount.toStringAsFixed(2)} ',
                              'style': GlobalStyles.of(context).subTitleMedium,
                            },
                            {
                              'text': '/m',
                              'style': Theme.of(context).textTheme.overline,
                            }
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
