part of '_index.dart';

class GajiKaryawanDetailCtrl {
  init() => logxx.i(GajiKaryawanDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
