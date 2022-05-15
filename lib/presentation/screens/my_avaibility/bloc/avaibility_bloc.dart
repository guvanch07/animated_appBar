abstract class AvaBloc {
  factory AvaBloc() => _AvaBloc();
  void getSomething();
}

class _AvaBloc implements AvaBloc {
  @override
  void getSomething() {}

  //! here is logic of ui with real data from serser
  //! also usecase here will be tranformed or handled with stream

}
