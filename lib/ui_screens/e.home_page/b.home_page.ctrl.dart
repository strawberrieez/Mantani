part of '_index.dart';

class HomePageCtrl {
  init() => logxx.i(HomePageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
