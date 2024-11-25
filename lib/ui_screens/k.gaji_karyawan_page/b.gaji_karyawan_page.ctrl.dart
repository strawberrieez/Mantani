part of '_index.dart';

class GajiKaryawanPageCtrl {
  init() => logxx.i(GajiKaryawanPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
