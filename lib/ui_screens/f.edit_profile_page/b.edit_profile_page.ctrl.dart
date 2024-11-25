part of '_index.dart';

class EditProfilePageCtrl {
  init() => logxx.i(EditProfilePageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
