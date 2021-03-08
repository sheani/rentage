import 'package:rentage/features/advanced/pages/advanced_page.dart';
import 'package:rentage/features/home/pages/home_page.dart';
import 'package:rentage/features/rentage/pages/rentage_page.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoute(SailorRoute(
      name: "/",
      builder: (context, args, params) {
        return HomePage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: "/general",
      builder: (context, args, params) {
        return RentagePage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: "/advanced",
      builder: (context, args, params) {
        return AdvancedPage();
      },
    ));
  }
}
