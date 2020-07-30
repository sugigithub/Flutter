import 'package:flutter/material.dart';

import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/data/brand_data.dart';
import 'package:demo_app/common/rich_text.dart';
import 'package:demo_app/common/with_padding.dart';

class Brand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          Text(
            Strings.hereIsWhatYouCanGet,
            style: GlobalStyles.of(context).brandTitle,
          ),
        ),
        Container(
          height: 195,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: BrandData.length,
            itemBuilder: (_, i) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 0,
              child: Container(
                height: 180,
                width: 165,
                padding: const EdgeInsets.only(left: 16, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        BrandData[i].background,
                      ),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset(
                      BrandData[i].brandIcon,
                      fit: BoxFit.cover,
                      height: 32,
                      width: 70,
                    ),
                    RichTextComp([
                      {
                        'text': BrandData[i].title,
                        'style': Theme.of(context).textTheme.bodyText1
                      },
                      {
                        'text': ' Pts',
                        'style': GlobalStyles.of(context).brandText
                      },
                    ]),
                    Text(
                      BrandData[i].subTitle,
                      style: GlobalStyles.of(context).brandText,
                      softWrap: true,
                    )
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
