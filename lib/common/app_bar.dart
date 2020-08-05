import 'package:flutter/material.dart';

import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/resources/images.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/widgets/notification_badge.dart';
import 'package:demo_app/common/with_padding.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  CustomAppBar({this.title});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext ctx) {
    return AppBar(
      leading: title == null
          ? Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 17, bottom: 15, right: 13),
                    child: Image.asset(
                      Images.menu2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () => Scaffold.of(context).openDrawer(),
                );
              },
            )
          : IconButton(
              padding: const EdgeInsets.all(0),
              color: DefaultColors.black,
              iconSize: 0,
              icon: Image.asset(Images.arrowBack,
                  height: 20, width: 20, fit: BoxFit.cover),
              onPressed: () => Navigator.of(ctx).pop(),
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
      title: title != null
          ? Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(title, style: GlobalStyles.of(ctx).pageTitle),
            )
          : null,
      centerTitle: false,
      elevation: Theme.of(ctx).appBarTheme.elevation,
      backgroundColor: Theme.of(ctx).appBarTheme.color,
      iconTheme: Theme.of(ctx).iconTheme,
    );
  }
}
