part of '_index.dart';

class KelolaSelengkapnyaData {
  final rxTitle = 'Kelola Selengkapnya'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxKelolaDetail = _pv.rxKelolaDetail;

  final rxKelolaList = _pv.rxKelolaList;
  

  
}
