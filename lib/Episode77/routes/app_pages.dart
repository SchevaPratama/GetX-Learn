import 'package:get/get.dart';
import 'package:getx_practice/Episode77/pages/homePage.dart';
import 'package:getx_practice/Episode77/pages/page2.dart';
import 'package:getx_practice/Episode77/pages/page3.dart';
import 'package:getx_practice/Episode77/pages/page4.dart';
import 'package:getx_practice/Episode77/routes/route_named.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.homepage,
      page: () => MainPage(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => Page2(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => Page3(),
    ),
    GetPage(
      name: RouteName.page_4,
      page: () => Page4(),
    ),
  ];
}
