import 'package:get/get.dart';

import 'package:barberapp/app/modules/home/bindings/home_binding.dart';
import 'package:barberapp/app/modules/home/views/home_view.dart';
import 'package:barberapp/app/modules/initial/initial_binding.dart';
import 'package:barberapp/app/modules/initial/initial_view.dart';
import 'package:barberapp/app/modules/login/login_binding.dart';
import 'package:barberapp/app/modules/login/login_view.dart';
import 'package:barberapp/app/modules/signup/bindings/signup_binding.dart';
import 'package:barberapp/app/modules/signup/views/signup_view.dart';
import 'package:barberapp/app/modules/welcome/welcome_binding.dart';
import 'package:barberapp/app/modules/welcome/welcome_view.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
        name: Routes.INITIAL,
        page: () => InitialView(),
        binding: InitialBinding()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginView(), binding: LoginBinding()),
    GetPage(
        name: Routes.WELCOME,
        page: () => WelcomeView(),
        binding: WelcomeBinding()),
    GetPage(
        name: Routes.SIGNUP,
        page: () => SignupView(),
        binding: SignupBinding()),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
