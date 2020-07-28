import 'package:flutter/material.dart';

class WithPadding extends StatelessWidget {
  final Widget child;

  WithPadding(this.child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: child,
    );
  }
}
