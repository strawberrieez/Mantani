part of '_index.dart';

class KelolaPageCtrl {
  init() => logxx.i(KelolaPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
