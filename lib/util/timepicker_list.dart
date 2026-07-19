import 'package:flutter/material.dart';

class selectedOnOffTime {
  String title;
  TimeOfDay time;

  selectedOnOffTime({required this.title, required this.time});
}

List<selectedOnOffTime> TimeList = [
  selectedOnOffTime(title: "Turn ON at :", time: TimeOfDay.now()),
  selectedOnOffTime(title: "Turn OFF at :", time: TimeOfDay.now()),
];
