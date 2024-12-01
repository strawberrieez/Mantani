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

  readKelolaColl() => _pv.rxKelolaList.stateAsync = _rp.getKelolaColl();
  readGajiColl() => _pv.rxGajiList.stateAsync = _rp.getGajiColl();
  readProfileColl() => _pv.rxProfileList.stateAsync = _rp.getProfileColl();

  createKelolaDoc(Lahan data) {
    _pv.rxKelolaList.st = [..._pv.rxKelolaList.st]..insert(0, data);
    return _rp.createKelolaDoc(data);
  }

  createGajiDoc(Gaji data) {
    _pv.rxGajiList.st = [..._pv.rxGajiList.st]..insert(0, data);
    return _rp.createGajiDoc(data);
  }

  createProfileDoc(Profile data) {
    _pv.rxProfileList.st = [..._pv.rxProfileList.st]..insert(0, data);
    return _rp.createProfileDoc(data);
  }

  deleteDoc(String id) {
    _pv.rxGajiList.st = [..._pv.rxGajiList.st]..removeWhere((element) => element.id == id);
    return _rp.deleteGajiDoc(id);
  }

  Future<String> getImageUrl(String id) async {
    final uin8List = await _pv.rxPickedImage.st?.readAsBytes();
    final contentType = _pv.rxPickedImage.st?.mimeType;
    final url = await FirebaseStorage.instance.ref(id).putData(uin8List!, SettableMetadata(contentType: contentType));
    _pv.rximageUrl.st = await url.ref.getDownloadURL();
    return _pv.rximageUrl.st;
  }

  selectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.st = id;
  }
  
  
  readDoc() => _pv.rxKelolaDetail.stateAsync = _rp.getDoc();

  
}

