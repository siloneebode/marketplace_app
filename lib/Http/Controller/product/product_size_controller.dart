import 'package:get/get.dart';
import 'package:marketplace_app/domain/Size/custom_size_model.dart';
import '../../../views/product/create/create_product_screen.dart';

class ProductSizeController extends GetxController {

  RxList<CustomSize> sizeList = List<CustomSize>.empty(growable: true).obs ;



  void change (CustomSize size) {

    // ici on fera un traitement
    Get.to(() => const CreateProductScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: size
    );
  }
}