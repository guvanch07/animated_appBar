import 'package:get_it/get_it.dart';
import 'package:test_appbar_animation/data/datasource/week_data_impl.dart';
import 'package:test_appbar_animation/domain/repository/base_week.dart';
import 'package:test_appbar_animation/domain/usecase/week_use_case.dart';
import 'package:test_appbar_animation/presentation/screens/my_avaibility/bloc/bloc.dart';

Future<void> injectDataModule() async {
  final sl = GetIt.I;

//! data
  sl.registerSingleton<IWeekDataFetch>(WeekDataFetch());

  //! usecase
  sl.registerFactory<WeekUseCase>(
    () => WeekUseCase(
      sl.get<IWeekDataFetch>(),
    ),
  );

  //! blocs

  sl.registerFactory<WeekBloc>(() => WeekBloc(sl.get<WeekUseCase>()));
}
