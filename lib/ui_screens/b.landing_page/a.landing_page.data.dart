part of '_index.dart';

class LandingPageData {
  final rxTitle = 'Landing Page'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
