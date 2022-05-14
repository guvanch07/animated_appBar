import 'package:flutter/cupertino.dart';

import 'package:test_appbar_animation/domain/usecase/week_use_case.dart';
import 'package:test_appbar_animation/presentation/screens/my_avaibility/bloc/bloc_data.dart';

// abstract class WeekBloc {
//   factory WeekBloc(WeekUseCase usecase) => _WeekBloc(usecase);

//   void getAlLWeekData();
// }

class WeekBloc extends ChangeNotifier {
  final WeekUseCase usecase;

  final screenData = HomeData.init();
  WeekBloc(
    this.usecase,
  );

  void getAlLWeekData() {
    screenData.dataWeek = usecase();
    notifyListeners();
  }
}
