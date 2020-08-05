import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:demo_app/resources/images.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/models/events.dart';
import 'package:demo_app/widgets/events_in_globe/events_card.dart';

class Events extends StatelessWidget {
  final List<EventsModel> data;
  Events(this.data);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: DefaultColors.lightGrey2,
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemBuilder: (_, i) => EventsCard(data[i]),
          itemCount: data.length,
        ),
      ),
    );
  }
}
