part of '_index.dart';

class GajiKaryawanDetailData {
  final rxTitle = 'Gaji Karyawan Detail'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxGajiList = _pv.rxGajiList;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createDoc();
      nav.back();
    },
  );

  final rxnamaKaryawan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxtugasKaryawan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxtanggalBekerja = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxlamaBekerja = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxgajiKaryawan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
}