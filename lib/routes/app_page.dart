import 'package:get/get.dart';
import 'package:marketplace_app/routes/app_route.dart';
import 'package:marketplace_app/views/color/color_screen.dart';
import 'package:marketplace_app/views/dahsboard/dashboard_screen.dart';
import 'package:marketplace_app/views/product/bindings/product_image_binding.dart';
import 'package:marketplace_app/views/product/create/product_image_screen.dart';
import 'package:marketplace_app/views/product/create/pick_image_screen.dart';

import '../views/dahsboard/dashboard_binding.dart';
import '../views/product/create/create_product_screen.dart';
import '../views/product/bindings/create_product_binding.dart';

class AppPage {
  static var pages = [
    GetPage(
        name: AppRoute.DASHBOARD,
        page: () => const DashboardScreen(),
        binding: DashboardBinding()
    ),
    GetPage(
        name: AppRoute.CREATE_PRODUCT,
        page: () => const CreateProductScreen(),
        binding: CreateProductBinding()
    ),
    GetPage(
        name: AppRoute.PRODUCT_IMAGES,
        page: () => ProductImageScrren(),
        binding: ProductImageBinding(),
    ),
    GetPage(
      name: AppRoute.SELECT_IMAGES,
      page: () => PickImageScreen(),
      binding: ProductImageBinding(),
    ),
    GetPage(
      name: AppRoute.SELECT_COLORS,
      page: () => ColorScreen(),
      binding: ProductImageBinding(),
    ),

  ];


}