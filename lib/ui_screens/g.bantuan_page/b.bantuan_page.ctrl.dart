part of '_index.dart';

class BantuanPageCtrl {
  init() => logxx.i(BantuanPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
