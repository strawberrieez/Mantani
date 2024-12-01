part of '_index.dart';

class EditProfilePageData {
  final rxTitle = 'Edit Profile Page'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProfileDetail = _pv.rxProfileDetail;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.updateDoc();
      nav.back();
    },
  );

  final rxnamaPerusahaan = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.namaPerusahaan}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );

  final rxnamaPemilik = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.namaPemilik}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );

  final rxnoTlp = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.noTlp}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );

  final rxalamat = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.alamat}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );
}
