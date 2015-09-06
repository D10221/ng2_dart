library helpers;

class TimerHelper
{
  static final _instance = new TimerHelper();
  factory TimerHelper(){return _instance ;}

   static String Day(DateTime time){
    var day = time.weekday;
    var days = {  1: "Mon", 2: "Tue" , 3: "Wed" , 4: "Thu", 5: "Fri", 6: "Sat", 7: "Sun"};
    return days[day];
  }
}