part of '_index.dart';

class GajiKaryawanListCtrl {
  init() => logxx.i(GajiKaryawanListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  deleteDoc(String id) => _sv.deleteDoc(id);
}
