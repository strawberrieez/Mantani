part of '_index.dart';

class LandingPage3Ctrl {
  init() => logxx.i(LandingPage3Ctrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
