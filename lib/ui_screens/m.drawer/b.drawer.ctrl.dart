part of '_index.dart';

class DrawerCtrl {
  init() => logxx.i(DrawerCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
