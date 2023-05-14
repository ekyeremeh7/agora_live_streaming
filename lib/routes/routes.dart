import 'package:get/get.dart';
import '../utils/route_path.dart';
import '../views/intro/intro_view.dart';

class Routes {
  Routes._();

  static final pages = [
    GetPage(
      name: RoutePath.intro,
      page: () => const IntroView(),
    ),
  ];
}
