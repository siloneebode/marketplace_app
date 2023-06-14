

import 'package:get/get.dart';
import 'package:marketplace_app/domain/Size/custom_size_model.dart';

import '../../../Insfrastructure/base_client.dart';
import '../../../Insfrastructure/constants.dart';
import '../../../views/product/create/create_product_screen.dart';

class ProductSizeController extends GetxController {

  RxList<CustomSize> sizeList = List<CustomSize>.empty(growable: true).obs ;


  Future getData () async {
    var url = "$baseUrl/api/sizes";
    var response = await CustomClient().get(url);
    if (response != null) {
      // on affiche le résultat de l'API
      sizeList.assignAll(addSizeListFromJson(response.toString()));
      // on sauvegarde les données de l'API dans le local
      //_localService.addData(data: addColorListFromJson(response));
      return sizeList;
    }

  }

  void change (CustomSize size) {

    // ici on fera un traitement
    Get.to(() => const CreateProductScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: size
    );
  }
}