part of '_index.dart';

class NavigatorData {
  final rxTitle = 'Navigator'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
