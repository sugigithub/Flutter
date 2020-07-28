import 'package:flutter/material.dart';

class RichTextComp extends StatelessWidget {
  final List<Map<String, dynamic>> textConfig;

  RichTextComp(this.textConfig);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: textConfig[0]['text'],
        style: textConfig[0]['style'],
        children: <TextSpan>[
          TextSpan(
            text: textConfig[1]['text'],
            style: textConfig[1]['style'],
          ),
        ],
      ),
    );
  }
}
