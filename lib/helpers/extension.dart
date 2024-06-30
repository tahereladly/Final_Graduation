import 'package:Glovy/globalData.dart';

extension TimeFormatX on TimeFormat{
  String fromTimeFormatToString() {
    switch(this){
      case TimeFormat.am:
        return "AM";

      case TimeFormat.pm:
        return "PM";

      default:
        return "";
    }
  }
}