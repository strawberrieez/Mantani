part of '_index.dart';

class KelolaPageDetailData {
  final rxTitle = 'Kelola Page Detail'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createDoc();
      nav.back();
    },
  );

  final rxnamaLahan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxlokasiLahan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxnamaBenih = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxwaktuPanen = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxtanggalTanam = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxhargaBeliBenih = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxmerkBenih = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxhargaBeliPupuk = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxnamaPupuk = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxminimalHargaJual = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxhargaJual = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxtanggalPanen = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );
}
