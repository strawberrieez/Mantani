part of '_index.dart';

class PenghasilanPageCtrl {
  init() => logxx.i(PenghasilanPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
  
}
