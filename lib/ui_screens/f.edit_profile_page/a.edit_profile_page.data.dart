part of '_index.dart';

class EditProfilePageData {
  final rxTitle = 'Edit Profile Page'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProfileList = _pv.rxProfileList;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createDoc();
      nav.back();
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
