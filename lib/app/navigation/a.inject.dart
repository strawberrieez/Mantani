part of '_index.dart';

final nav = NavigationBuilder.create(
  // initialLocation: Prov.auth.st.rxUser.st == null ? Routes.loginPage : Routes.kelolaPageList,
  initialLocation: Routes.gajiKaryawanList,
  routes: RouteMap.data,
);
