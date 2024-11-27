part of '_index.dart';

class LandingPage2Ctrl {
  init() => logxx.i(LandingPage2Ctrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
