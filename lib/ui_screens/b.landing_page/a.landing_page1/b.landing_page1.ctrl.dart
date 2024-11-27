part of '_index.dart';

class LandingPage1Ctrl {
  init() => logxx.i(LandingPage1Ctrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
