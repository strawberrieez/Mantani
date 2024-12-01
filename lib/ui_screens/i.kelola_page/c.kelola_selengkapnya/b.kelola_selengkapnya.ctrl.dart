part of '_index.dart';

class KelolaSelengkapnyaCtrl {
  init() => logxx.i(KelolaSelengkapnyaCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  deleteDoc(String id) => _sv.deleteDoc(id);
  
}

