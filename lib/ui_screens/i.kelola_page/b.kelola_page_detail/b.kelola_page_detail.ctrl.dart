part of '_index.dart';

class KelolaPageDetailCtrl {
  init() => logxx.i(KelolaPageDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  createDoc() async {
    final id = UniqueKey().toString();
    final data = Lahan(
      id: id,
      createdAt: DateTime.now().toString(),
      // imageUrl: await _sv.getImageUrl(id),
      namaLahan: _dt.rxnamaLahan.value,
      lokasiLahan: _dt.rxlokasiLahan.value,
      namaBenih: _dt.rxnamaBenih.value,
      waktuPanen: _dt.rxwaktuPanen.value,
      tanggalTanam: _dt.rxtanggalTanam.value,
      hargaBeliBenih: int.parse(_dt.rxhargaBeliBenih.value),
      merkBenih: _dt.rxmerkBenih.value,
      hargaBeliPupuk: int.parse(_dt.rxhargaBeliPupuk.value),
      namaPupuk: _dt.rxnamaPupuk.value,
      minimalHargaJual: int.parse(_dt.rxminimalHargaJual.value),
      hargaJual: int.parse(_dt.rxhargaJual.value),
      tanggalPanen: _dt.rxtanggalPanen.value,
      totalPanen: int.parse(_dt.rxtotalPanen.value),
    );
    _sv.createKelolaDoc(data);
  }

}
