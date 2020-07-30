import 'package:flutter/material.dart';

import 'package:demo_app/resources/images.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/widgets/notification_badge.dart';
import 'package:demo_app/common/with_padding.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext ctx) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return GestureDetector(
            child: Container(
              padding:
                  EdgeInsets.only(left: 20, top: 17, bottom: 15, right: 13),
              child: Image.asset(
                Images.menu2,
                fit: BoxFit.fill,
              ),
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
      actions: <Widget>[
        NotificationBadge(
            child: Image.asset(Images.notification, height: 26, width: 24),
            value: '56'),
        WithPadding(
          CircleAvatar(
            child: Image.asset(
              Images.profile,
              height: 35,
              width: 35,
            ),
            backgroundColor: DefaultColors.white,
          ),
        ),
      ],
      elevation: Theme.of(ctx).appBarTheme.elevation,
      backgroundColor: Theme.of(ctx).appBarTheme.color,
    );
  }
}
