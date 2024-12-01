part of '_index.dart';

class KelolaPageDetailData {
  final rxTitle = 'Kelola Page Detail'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxPickedImage = _pv.rxPickedImage;

  final rxKelolaList = _pv.rxKelolaList;

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
      Validate.description,
    ],
  );

  final rxlokasiLahan = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxnamaBenih = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxwaktuPanen = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxtanggalTanam = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxhargaBeliBenih = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxmerkBenih = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxhargaBeliPupuk = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxnamaPupuk = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxminimalHargaJual = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxhargaJual = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxtanggalPanen = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );
  final rxtotalPanen = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ]

  );
}
