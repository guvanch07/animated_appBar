import 'package:test_appbar_animation/domain/models/week_data.dart';

abstract class IWeekDataFetch {
  List<WeekDataModel> getWeeks();
  // usally it would be future
}
