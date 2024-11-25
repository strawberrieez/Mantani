part of '_index.dart';

class HomePageData {
  final rxTitle = 'Home Page'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
