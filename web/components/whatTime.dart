library whatTime;

import '../helpers.dart' as Helpers;
import 'package:angular2/angular2.dart';
import 'dart:async';


@Component(selector: "WhatTime")
@View(template: '<div> WhatTime: {{time}} // {{dayOfWeek}}</div>')
class WhatTime
{
  String time;
  Timer _timer;
  String dayOfWeek ;
  WhatTime(){
    _updateTime(null);
    _timer = new Timer.periodic(new Duration(seconds: 1), _updateTime);
  }
  _updateTime(Timer _) {
    var dateTime = new DateTime.now();
    time = dateTime.toString();
    dayOfWeek = Helpers.TimerHelper.Day(dateTime);
  }
}