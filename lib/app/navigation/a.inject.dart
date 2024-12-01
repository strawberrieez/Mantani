part of '_index.dart';

final nav = NavigationBuilder.create(
  // initialLocation: Prov.auth.st.rxUser.st == null ? Routes.loginPage : Routes.createProfile,
  initialLocation: Routes.homePage,
  routes: RouteMap.data,
);