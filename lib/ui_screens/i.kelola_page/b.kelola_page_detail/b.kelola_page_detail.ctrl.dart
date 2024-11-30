part of '_index.dart';

class KelolaPageDetailCtrl {
  init() => logxx.i(KelolaPageDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
  
  createDoc() async {
    final id = UniqueKey().toString();
    final data = Product(
      id: id,
      createdAt: DateTime.now().toString(),
      // imageUrl: await _sv.getImageUrl(id),
      namaLahan: _dt.rxnamaLahan.value,
      lokasiLahan: _dt.rxlokasiLahan.value,
      namaBenih: _dt.rxnamaBenih.value,
      waktuPanen: _dt.rxwaktuPanen.value,
      tanggalTanam: _dt.rxtanggalTanam.value,
      hargaBeliBenih: _dt.rxhargaBeliBenih.value,
      merkBenih: _dt.rxmerkBenih.value,
      hargaBeliPupuk: _dt.rxhargaBeliPupuk.value,
      namaPupuk: _dt.rxnamaPupuk.value,
      minimalHargaJual: _dt.rxminimalHargaJual.value,
      hargaJual: _dt.rxhargaJual.value,
      tanggalPanen: _dt.rxtanggalPanen.value,
    );
    _sv.createDoc(data);
  }
}
