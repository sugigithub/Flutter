import 'package:flutter/material.dart';

import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/styles/global_styles.dart';
// class Tabs extends StatelessWidget {
//   final Function changeType;
//   final String type;
//   final TextStyle style;
//   final Color color;

//   Tabs({
//     @required this.changeType,
//     @required this.type,
//     @required this.style,
//     @required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: changeType,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         key: ValueKey(type),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 15.0,
//             vertical: 11.0,
//           ),
//           child: Text(type, style: style),
//         ),
//         color: color,
//         elevation: 0,
//       ),
//     );
//   }
// }

class Tabs extends StatelessWidget {
  final List<String> types;
  final Function onChangePromo;
  final String activeType;

  Tabs({
    @required this.types,
    @required this.onChangePromo,
    @required this.activeType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: types
            .map(
              (type) => InkWell(
                onTap: () => onChangePromo(type),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  key: ValueKey(type),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 11.0,
                    ),
                    child: Text(
                      type,
                      style: activeType != type
                          ? GlobalStyles.of(context).promosUnSelected
                          : Theme.of(context).textTheme.caption,
                    ),
                  ),
                  color: activeType != type
                      ? DefaultColors.promosBlue
                      : DefaultColors.royalBlue,
                  elevation: 0,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
