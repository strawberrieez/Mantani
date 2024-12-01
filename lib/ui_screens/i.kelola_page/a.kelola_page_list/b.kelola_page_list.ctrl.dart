part of '_index.dart';

class KelolaPageListCtrl {
  init() => logxx.i(KelolaPageListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  readColl() => _sv.readKelolaColl();

  selectedId(String id) => _sv.selectedId(id);

  deleteDoc(String id) => _sv.deleteDoc(id);
}
