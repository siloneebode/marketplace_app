
import 'package:get/get.dart';
import 'package:marketplace_app/views/product/create/product_sub_category_screen.dart';

import '../../../Insfrastructure/base_client.dart';
import '../../../Insfrastructure/constants.dart';
import '../../../domain/product/category_model.dart';

class ProductCategoryController extends GetxController {

  RxList<Category> categoryList = List<Category>.empty(growable: true).obs ;
  var categorySelected ;
  var url = '$baseUrl/api/categories/';

  Future getCategories () async {

    var response = await CustomClient().get(url);
    if (response != null) {
      // on affiche le résultat de l'API
      categoryList.assignAll(addCategoryListFromJson(response.toString()));
      // on sauvegarde les données de l'API dans le local
      //_localService.addData(data: addColorListFromJson(response));
      return categoryList;
    }

  }

  void change (Category category) {
    Get.to(() => const ProductSubCategoryScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: category
    );
    update();
  }


}