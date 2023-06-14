

import 'package:get/get.dart';
import 'package:marketplace_app/views/product/create/create_product_screen.dart';

import '../../../Insfrastructure/base_client.dart';
import '../../../Insfrastructure/constants.dart';
import '../../../domain/brand/brand_model.dart';

class ProductBrandController extends GetxController {

  RxList<Brand> brandList = List<Brand>.empty(growable: true).obs ;


  Future getBrands () async {
    var url = "$baseUrl/api/brands";
    var response = await CustomClient().get(url);
    if (response != null) {
      // on affiche le résultat de l'API
      brandList.assignAll(addBrandListFromJson(response.toString()));
      // on sauvegarde les données de l'API dans le local
      //_localService.addData(data: addColorListFromJson(response));
      return brandList;
    }

  }

  void change (Brand brand) {

    // ici on fera un traitement
    Get.to(() => const CreateProductScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: brand
    );
  }

}