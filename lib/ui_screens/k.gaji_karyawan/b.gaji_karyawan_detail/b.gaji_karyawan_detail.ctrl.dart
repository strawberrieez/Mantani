part of '_index.dart';

class GajiKaryawanDetailCtrl {
  init() => logxx.i(GajiKaryawanDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  createDoc() async {
    final id = UniqueKey().toString();
    final data = Gaji(
      id: id,
      createdAt: DateTime.now().toString(),
      namaKaryawan: _dt.rxnamaKaryawan.value,
      tugasKaryawan: _dt.rxtugasKaryawan.value,
      tanggalBekerja: _dt.rxtanggalBekerja.value,
      lamaBekerja: _dt.rxlamaBekerja.value,
      gaji: int.parse(_dt.rxgajiKaryawan.value),
    );
    _sv.createGajiDoc(data);
  }
}
