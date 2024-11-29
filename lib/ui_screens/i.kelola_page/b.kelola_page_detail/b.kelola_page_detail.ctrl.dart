part of '_index.dart';

class KelolaPageDetailCtrl {
  init() => logxx.i(KelolaPageDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
