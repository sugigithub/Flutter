import 'package:demo_app/models/events.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/resources/images.dart';
import 'package:flutter/cupertino.dart';

class EventsData extends ChangeNotifier {
  int _activeIndex = 0;

  Map<String, List<EventsModel>> _eventsData = {
    Strings.events.toUpperCase(): [
      EventsModel(
        backgroundImage: Images.events5,
        eventName: Strings.musicNight,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 1)),
      ),
      EventsModel(
        backgroundImage: Images.events4,
        eventName: Strings.kidsCarnival,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 2)),
      ),
      EventsModel(
        backgroundImage: Images.events3,
        eventName: Strings.goCarting,
        place: Strings.ayalaStatium,
        time: DateTime.now().add(Duration(days: 0)),
      ),
      EventsModel(
        backgroundImage: Images.events2,
        eventName: Strings.musicNight,
        place: Strings.ayalaStatium,
        time: DateTime.now().subtract(Duration(days: 2)),
      ),
    ],
    Strings.travel.toUpperCase(): [
      EventsModel(
        backgroundImage: Images.events,
        eventName: Strings.musicNight,
        place: Strings.ayalaStatium,
        time: DateTime.now().add(Duration(days: 1)),
      ),
      EventsModel(
        backgroundImage: Images.events1,
        eventName: Strings.kidsCarnival,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 2)),
      ),
      EventsModel(
        backgroundImage: Images.events2,
        eventName: Strings.goCarting,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 0)),
      ),
      EventsModel(
        backgroundImage: Images.events3,
        eventName: Strings.musicNight,
        place: Strings.ayalaStatium,
        time: DateTime.now().subtract(Duration(days: 2)),
      ),
      EventsModel(
        backgroundImage: Images.events4,
        eventName: Strings.kidsCarnival,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 3)),
      ),
    ],
    Strings.shop.toUpperCase(): [
      EventsModel(
        backgroundImage: Images.events3,
        eventName: Strings.goCarting,
        place: Strings.cebu,
        time: DateTime.now().subtract(Duration(days: 1)),
      ),
      EventsModel(
        backgroundImage: Images.events,
        eventName: Strings.kidsCarnival,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 2)),
      ),
    ],
    Strings.food.toUpperCase(): [
      EventsModel(
        backgroundImage: Images.events5,
        eventName: Strings.musicNight,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 1)),
      ),
      EventsModel(
        backgroundImage: Images.events4,
        eventName: Strings.kidsCarnival,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 2)),
      ),
      EventsModel(
        backgroundImage: Images.events3,
        eventName: Strings.goCarting,
        place: Strings.ayalaStatium,
        time: DateTime.now().add(Duration(days: 0)),
      ),
      EventsModel(
        backgroundImage: Images.events2,
        eventName: Strings.musicNight,
        place: Strings.ayalaStatium,
        time: DateTime.now().subtract(Duration(days: 2)),
      ),
    ],
    Strings.photography.toUpperCase(): [
      EventsModel(
        backgroundImage: Images.events,
        eventName: Strings.kidsCarnival,
        place: Strings.cebu,
        time: DateTime.now().subtract(Duration(days: 1)),
      ),
      EventsModel(
        backgroundImage: Images.events2,
        eventName: Strings.musicNight,
        place: Strings.cebu,
        time: DateTime.now().add(Duration(days: 0)),
      ),
      EventsModel(
        backgroundImage: Images.events5,
        eventName: Strings.goCarting,
        place: Strings.ayalaStatium,
        time: DateTime.now().add(Duration(days: 2)),
      ),
    ],
  };

  List<String> get eventsType {
    return _eventsData.keys.toList();
  }

  List<EventsModel> get events {
    return _eventsData.values.toList()[_activeIndex];
  }

  changeActiveEvent(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  String get activeEvent {
    return _eventsData.keys.toList()[_activeIndex];
  }
}
