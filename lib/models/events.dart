import 'package:flutter/material.dart';

class EventsModel {
  final String backgroundImage;
  final String eventName;
  final String place;
  final DateTime time;

  const EventsModel({
    @required this.backgroundImage,
    @required this.eventName,
    @required this.place,
    @required this.time,
  });
}
