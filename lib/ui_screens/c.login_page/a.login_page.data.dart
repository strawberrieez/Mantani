part of '_index.dart';

class LoginPageData {
  final rxTitle = 'Login Page'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxUser = _pv.rxUser;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.signInByEP();
    },
  );

  final rxEmail = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isEmail,
    ],
  );

  final rxPassword = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.pwdContain,
    ],
  );
}
