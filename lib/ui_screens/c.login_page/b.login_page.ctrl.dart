part of '_index.dart';

class LoginPageCtrl {
  init() => logxx.i(LoginPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
