import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo_app/data/events_data.dart';
import 'package:demo_app/common/tabs.dart';
import 'package:demo_app/styles/colors.dart';
import 'package:demo_app/common/text_gradient.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/widgets/events_in_globe/events.dart';

class EventsAtGlobe extends StatelessWidget {
  void changeEvent(String type, BuildContext context) {
    var eventsData = Provider.of<EventsData>(context, listen: false);
    var eventsType = eventsData.eventsType;
    eventsData.changeActiveEvent(eventsType.indexOf(type));
  }

  @override
  Widget build(BuildContext context) {
    var eventsData = Provider.of<EventsData>(context);
    var eventsType = eventsData.eventsType;
    var activeEventData = eventsData.events;
    var activeType = eventsData.activeEvent;
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 180,
          padding: const EdgeInsets.all(20),
          child: TextGradient(
            text: Strings.funWithGlobe,
            colors: [DefaultColors.violet, DefaultColors.pink],
          ),
        ),
        Tabs(
          types: eventsType,
          onChangePromo: (type) => changeEvent(type, context),
          activeType: activeType,
        ),
        Events(activeEventData)
      ],
    );
  }
}
