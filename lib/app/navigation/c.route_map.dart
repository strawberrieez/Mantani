part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.splashScreen: (RouteData data) => const SplashScreenView(),
  };
}
