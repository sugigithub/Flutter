import 'package:flutter/material.dart';

class TwoLineText extends StatelessWidget {
  final List<Map<String, dynamic>> textConfig;
  TwoLineText(this.textConfig);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            textConfig[0]['text'],
            style: textConfig[0]['style'],
          ),
          SizedBox(height: 5),
          Text(textConfig[1]['text'], style: textConfig[1]['style']),
        ],
      ),
    );
  }
}
