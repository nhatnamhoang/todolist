import 'package:todoapp/@core/router/pages.dart';
import 'package:todoapp/screen/home/home.binding.dart';
import 'package:todoapp/screen/home/home.screen.dart';
import 'package:todoapp/screen/splash/splash.binding.dart';
import 'package:todoapp/screen/splash/splash.screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routers {
  static final route = [
    GetPage(name: ROUTER_SPLASH, page: () => SplashScreen(), binding: SplashBinding()),
    GetPage(name: ROUTER_HOME, page: () => HomeScreen(), binding: HomeBinding()),
  ];
}
