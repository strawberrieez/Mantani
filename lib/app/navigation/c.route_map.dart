part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.splashScreen: (RouteData data) => const SplashScreenView(),
    Routes.landingPage: (RouteData data) => const LandingPageView(),
    Routes.loginPage: (RouteData data) => const LoginPageView(),
    Routes.registerPage: (RouteData data) => const RegisterPageView(),
    Routes.homePage: (RouteData data) => const HomePageView(),
    Routes.editProfilePage: (RouteData data) => const EditProfilePageView(),
    Routes.bantuanPage: (RouteData data) => const BantuanPageView(),
    Routes.tentangPage: (RouteData data) => const TentangPageView(),
    Routes.kelolaPage: (RouteData data) => const KelolaPageView(),
    Routes.penghasilanPage: (RouteData data) => const PenghasilanPageView(),
    Routes.gajiKaryawanPage: (RouteData data) => const GajiKaryawanPageView(),
    Routes.historyPanenPage: (RouteData data) => const HistoryPanenPageView(),
  };
}
