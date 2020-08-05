import 'package:demo_app/widgets/promos/promo_detail.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/models/promos.dart';
import 'package:demo_app/common/list_bullet.dart';
import 'package:demo_app/common/tag.dart';
import 'package:demo_app/styles/global_styles.dart';

class PromosCard extends StatelessWidget {
  final Promo data;

  PromosCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PromoDetail(data),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ...data.description
                          .map(
                            (desc) => Row(
                              children: <Widget>[
                                ListBullet(),
                                Text(
                                  desc,
                                  style: GlobalStyles.of(context).promosdesc,
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Tag(data.title)
        ],
      ),
    );
  }
}
