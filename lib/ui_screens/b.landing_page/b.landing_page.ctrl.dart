part of '_index.dart';

class LandingPageCtrl {
  init() => logxx.i(LandingPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
