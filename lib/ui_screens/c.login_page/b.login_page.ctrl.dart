part of '_index.dart';

class LoginPageCtrl {
  init() => logxx.i(LoginPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  signInByEP() async {
    await _sv.signInByEP(
      email: _dt.rxEmail.value,
      password: _dt.rxPassword.value,
    );
  }

  signInAnonimously() {
    _sv.signInAnonimously();
  }

  signInByGoogle() {
    _sv.signInByGoogle();
  }
}
