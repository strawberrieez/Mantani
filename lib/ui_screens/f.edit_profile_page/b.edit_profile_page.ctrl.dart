part of '_index.dart';

class EditProfilePageCtrl {
  init() => logxx.i(EditProfilePageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  createDoc() async {
    final id = UniqueKey().toString();
    final data = Profile(
      id: id,
      createdAt: DateTime.now().toString(),
      namaPemilik: _dt.rxnamaPemilik.value,
      namaPerusahaan: _dt.rxnamaPerusahaan.value,
      noTlp: _dt.rxnotlp.value,
      alamat: _dt.rxalamat.value,
    );
    _sv.createProfileDoc(data);
  }
}
