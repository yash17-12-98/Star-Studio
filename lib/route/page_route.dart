import 'package:get/get.dart';
import 'package:star_studio/bindings/home_binding.dart';
import 'package:star_studio/screens/home/home_screen.dart';
import 'package:star_studio/screens/signup_screen.dart';
import '../bindings/bindings.dart';
import '../screens/screens.dart';

List<GetPage> pageRoute = [
  GetPage(
    name: '/',
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: LoginScreen.pageId,
    page: () => const LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: SignUpScreen.pageId,
    page: () => const SignUpScreen(),
    binding: SignUpBinding(),
  ),
  GetPage(
    name: HomeScreen.pageId,
    page: () => const HomeScreen(),
    binding: HomeBinding(),
  )
];
