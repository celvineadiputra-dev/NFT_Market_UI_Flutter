import 'package:get/get.dart';

import '../modules/DetailScreen/bindings/detail_screen_binding.dart';
import '../modules/DetailScreen/views/detail_screen_view.dart';
import '../modules/OnBoardingScreen/bindings/on_boarding_screen_binding.dart';
import '../modules/OnBoardingScreen/views/on_boarding_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING_SCREEN,
      page: () => OnBoardingScreenView(),
      binding: OnBoardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SCREEN,
      page: () => DetailScreenView(),
      binding: DetailScreenBinding(),
    ),
  ];
}
