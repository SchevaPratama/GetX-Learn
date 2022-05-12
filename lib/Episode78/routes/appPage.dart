import 'package:get/get.dart';
import 'route_named.dart';

import '../pages/DetailPage.dart';
import '../pages/HomePage.dart';
import '../pages/ProductPage.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.home, page: () => MainPage()),
    GetPage(name: RouteName.product, page: () => ProductsPage()),
    GetPage(name: RouteName.product + '/:id?', page: () => DetailPage())
  ];
}
