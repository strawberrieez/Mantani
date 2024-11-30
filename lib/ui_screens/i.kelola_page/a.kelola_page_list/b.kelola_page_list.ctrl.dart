part of '_index.dart';

class KelolaPageListCtrl {
  init() => logxx.i(KelolaPageListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  readColl() => _sv.readColl();

  createDoc() {
    final data = Product(
      id: UniqueKey().toString(),
      createdAt: DateTime.now().toString(),
      namaLahan: 'lahan 1',
      lokasiLahan: 'sebelah tower',
      namaBenih: 'padi',
      waktuPanen: '2 bulan',
      tanggalTanam: '648264',
      hargaBeliBenih: 'Rp. 6.000',
      merkBenih: 'Mapan P-05',
      hargaBeliPupuk: 'Rp. 26.000',
      namaPupuk: '-',
      minimalHargaJual: 'Rp. 6.000',
      hargaJual: 'Rp. 37.000',
      tanggalPanen: '187892',
    );
    _sv.createDoc(data);
  }
}
