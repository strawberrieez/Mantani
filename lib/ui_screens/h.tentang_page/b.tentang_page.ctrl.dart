part of '_index.dart';

class TentangPageCtrl {
  init() => logxx.i(TentangPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
