part of '_index.dart';

class NavigatorCtrl {
  init() => logxx.i(NavigatorCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
