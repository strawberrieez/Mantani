part of '_index.dart';

class CreateProfileData {
  final rxTitle = 'Create Profile'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;


  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createDoc();
      nav.toAndRemoveUntil(Routes.homePage);
    },
  );

  final rxnamaPerusahaan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxnamaPemilik = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxnotlp = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxalamat = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );
}
