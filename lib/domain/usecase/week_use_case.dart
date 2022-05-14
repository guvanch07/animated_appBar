import 'package:test_appbar_animation/domain/models/week_data.dart';
import 'package:test_appbar_animation/domain/repository/base_week.dart';
import 'package:test_appbar_animation/domain/usecase/base_usecase.dart';

class WeekUseCase extends UseCase<List<WeekDataModel>> {
  final IWeekDataFetch weekData;
  WeekUseCase(
    this.weekData,
  );

  @override
  List<WeekDataModel> call() {
    return weekData.getWeeks();
  }
}
