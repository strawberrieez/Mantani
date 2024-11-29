part of '_index.dart';

class DrawerData {
  final rxTitle = 'Drawer'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
