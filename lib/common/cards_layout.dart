import 'package:flutter/material.dart';

/// provides a layout for the cards wich has column as child

class CardsLayout extends StatelessWidget {
  final double height;
  final double width;
  final String backgroundImage;
  final List<Widget> widgets;

  CardsLayout(
      {@required this.height,
      @required this.width,
      this.backgroundImage,
      @required this.widgets});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(left: 16, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                backgroundImage,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgets,
        ),
      ),
    );
  }
}
