part of '_index.dart';

class CreateProfileCtrl {
  init() => logxx.i(CreateProfileCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
