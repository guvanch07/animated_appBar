import 'package:test_appbar_animation/domain/models/week_data.dart';

class HomeData {
  List<WeekDataModel>? dataWeek;

  HomeData(this.dataWeek);

  factory HomeData.init() => HomeData(null);

  HomeData copy() => HomeData(dataWeek);
}
