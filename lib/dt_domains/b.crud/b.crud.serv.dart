part of '_index.dart';

class CrudServ {
  void init() {
    logxx.i(CrudServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(CrudServ, 'rxCounter setState success');
  }

  readColl() => _pv.rxKelolaList.stateAsync = _rp.getColl();

  createDoc(Product data) {
    _pv.rxKelolaList.st = [..._pv.rxKelolaList.st]..insert(0, data);
    return _rp.createDoc(data);
  }
}
