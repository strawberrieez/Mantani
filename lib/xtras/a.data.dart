part of '_index.dart';

abstract class Data {
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;
  static Injected<LoginPageData> get loginPage => _loginPageData;
  static Injected<RegisterPageData> get registerPage => _registerPageData;
  static Injected<HomePageData> get homePage => _homePageData;
  static Injected<EditProfilePageData> get editProfilePage => _editProfilePageData;
  static Injected<BantuanPageData> get bantuanPage => _bantuanPageData;
  static Injected<TentangPageData> get tentangPage => _tentangPageData;
  static Injected<HistoryPanenPageData> get historyPanenPage => _historyPanenPageData;
  static Injected<LandingPage1Data> get landingPage1 => _landingPage1Data;
  static Injected<LandingPage3Data> get landingPage3 => _landingPage3Data;
  static Injected<LandingPage2Data> get landingPage2 => _landingPage2Data;
  static Injected<KelolaPageListData> get kelolaPageList => _kelolaPageListData;
  static Injected<KelolaPageDetailData> get kelolaPageDetail => _kelolaPageDetailData;
  static Injected<PenghasilanPageData> get penghasilanPage => _penghasilanPageData;
  static Injected<GajiKaryawanListData> get gajiKaryawanList => _gajiKaryawanListData;
  static Injected<GajiKaryawanDetailData> get gajiKaryawanDetail => _gajiKaryawanDetailData;
  static Injected<DrawerData> get drawer => _drawerData;
}

final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);

final _loginPageData = RM1.inj(LoginPageData(), Ctrl.loginPage.init);
final _registerPageData = RM1.inj(RegisterPageData(), Ctrl.registerPage.init);
final _homePageData = RM1.inj(HomePageData(), Ctrl.homePage.init);
final _editProfilePageData = RM1.inj(EditProfilePageData(), Ctrl.editProfilePage.init);
final _bantuanPageData = RM1.inj(BantuanPageData(), Ctrl.bantuanPage.init);
final _tentangPageData = RM1.inj(TentangPageData(), Ctrl.tentangPage.init);
final _historyPanenPageData = RM1.inj(HistoryPanenPageData(), Ctrl.historyPanenPage.init);
final _landingPage1Data = RM1.inj(LandingPage1Data(), Ctrl.landingPage1.init);
final _landingPage2Data = RM1.inj(LandingPage2Data(), Ctrl.landingPage2.init);

final _landingPage3Data = RM1.inj(LandingPage3Data(), Ctrl.landingPage3.init);
final _kelolaPageListData = RM1.inj(KelolaPageListData(), Ctrl.kelolaPageList.init);
final _kelolaPageDetailData = RM1.inj(KelolaPageDetailData(), Ctrl.kelolaPageDetail.init);

final _penghasilanPageData = RM1.inj(PenghasilanPageData(), Ctrl.penghasilanPage.init);
final _gajiKaryawanListData = RM1.inj(GajiKaryawanListData(), Ctrl.gajiKaryawanList.init);
final _gajiKaryawanDetailData = RM1.inj(GajiKaryawanDetailData(), Ctrl.gajiKaryawanDetail.init);

final _drawerData = RM1.inj(DrawerData(), Ctrl.drawer.init);
