part of '_index.dart';

class RegisterPageCtrl {
  init() => logxx.i(RegisterPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
