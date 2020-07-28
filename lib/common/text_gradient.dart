import 'package:flutter/material.dart';

class TextGradient extends StatelessWidget {
  final String text;
  final List<Color> colors;

  TextGradient({@required this.text, @required this.colors});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 0.8]).createShader(rect),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
