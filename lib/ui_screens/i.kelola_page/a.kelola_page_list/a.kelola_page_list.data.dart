part of '_index.dart';

class KelolaPageListData {
  final rxTitle = 'Kelola Page List'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxKelolaList = _pv.rxKelolaList;

  final rxSelectedId = _pv.rxSelectedId;

  
}
