part of '_index.dart';

final nav = NavigationBuilder.create(
  initialLocation: Prov.auth.st.rxUser.st == null ? Routes.loginPage : Routes.homePage,
  // initialLocation: Routes.splashScreen,
  routes: RouteMap.data,
);