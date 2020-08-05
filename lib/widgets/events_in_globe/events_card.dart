import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:demo_app/resources/images.dart';
import 'package:demo_app/models/events.dart';

class EventsCard extends StatelessWidget {
  final EventsModel data;

  EventsCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(data.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
              child: Text(data.eventName,
                  style: Theme.of(context).textTheme.headline6),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Row(
                children: <Widget>[
                  Image.asset(Images.calenderIcon, height: 20, width: 20),
                  Expanded(
                      child:
                          Text(' ${DateFormat('E d,MMM').format(data.time)}')),
                  Image.asset(Images.locationIcon, height: 20, width: 20),
                  Text(' ${data.place}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
