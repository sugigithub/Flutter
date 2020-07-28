import 'package:flutter/material.dart';

class ContainerLayout extends StatelessWidget {
  final double width;
  final List<Widget> widgetOne;
  final Widget widgetTwo;
  final String backgroundImage;

  ContainerLayout(
      {@required this.width,
      @required this.widgetOne,
      @required this.widgetTwo,
      @required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widgetOne,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
              child: widgetTwo,
            ),
          ],
        ),
      ),
    );
  }
}
