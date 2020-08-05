import 'package:flutter/material.dart';

class ListBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 5.0,
      margin: const EdgeInsets.only(right: 5, top: 8, bottom: 8),
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
