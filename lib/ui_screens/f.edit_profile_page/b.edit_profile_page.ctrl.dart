part of '_index.dart';

class EditProfilePageCtrl {
  init() => logxx.i(EditProfilePageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  updateDoc() async {
    final data = Profile(
      id: _dt.rxProfileDetail.st!.id,
      createdAt: _dt.rxProfileDetail.st!.createdAt,
      namaPerusahaan: _dt.rxnamaPerusahaan.st.value,
      namaPemilik: _dt.rxnamaPemilik.st.value,
      noTlp: _dt.rxnoTlp.st.value,
      alamat: _dt.rxalamat.st.value,
    );
    _sv.updateDoc(data);
  }
}
