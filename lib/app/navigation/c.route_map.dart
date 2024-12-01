part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.splashScreen: (RouteData data) => const SplashScreenView(),
    Routes.loginPage: (RouteData data) => const LoginPageView(),
    Routes.registerPage: (RouteData data) => const RegisterPageView(),
    Routes.editProfilePage: (RouteData data) => const EditProfilePageView(),
    Routes.bantuanPage: (RouteData data) => const BantuanPageView(),
    Routes.tentangPage: (RouteData data) => const TentangPageView(),
    Routes.historyPanenPage: (RouteData data) => const HistoryPanenPageView(),
    Routes.landingPage1: (RouteData data) => const LandingPage1View(),
    Routes.landingPage2: (RouteData data) => const LandingPage2View(),
    Routes.landingPage3: (RouteData data) => const LandingPage3View(),
    Routes.kelolaPageList: (RouteData data) => const KelolaPageListView(),
    Routes.kelolaPageDetail: (RouteData data) => KelolaPageDetailView(),
    Routes.penghasilanPage: (RouteData data) => const PenghasilanPageView(),
    Routes.gajiKaryawanList: (RouteData data) => const GajiKaryawanListView(),
    Routes.gajiKaryawanDetail: (RouteData data) => const GajiKaryawanDetailView(),
    Routes.drawer: (RouteData data) =>  DrawerView(),
    Routes.homePage: (RouteData data) => const HomePageView(),
    Routes.kelolaSelengkapnya: (RouteData data,) =>  const KelolaSelengkapnyaView(),
    Routes.createProfile: (RouteData data) => const CreateProfileView(),
  };
}
