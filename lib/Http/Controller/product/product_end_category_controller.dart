import 'package:get/get.dart';
import 'package:marketplace_app/domain/product/end_category_model.dart';
import 'package:marketplace_app/domain/product/sub_category_model.dart';
import 'package:marketplace_app/views/product/create/create_product_screen.dart';
import '../../../Insfrastructure/base_client.dart';
import '../../../Insfrastructure/constants.dart';
import '../../../domain/product/category_model.dart';


class ProductEndCategoryController extends GetxController {
  RxList<EndCategory> endCategoryList = List<EndCategory>.empty(growable: true).obs ;
  late SubCategory subCategorySelected ;
  //late SubCategory subCategorySelected;

  @override
  void onInit() {
    var subCategory = Get.arguments;
    if (subCategory != null) {
      subCategorySelected = subCategory;
    }
    super.onInit();
  }

  Future getSubCategories () async {
    var url = "$baseUrl/api/end-categories?populate=sub_category&filters[sub_category][id][\$eq]=${subCategorySelected.id}";

    var response = await CustomClient().get(url);
    if (response != null) {
      print(url);
      // on affiche le résultat de l'API
      endCategoryList.assignAll(addEndCategoryListFromJson(response.toString()));
      // on sauvegarde les données de l'API dans le local
      //_localService.addData(data: addColorListFromJson(response));
      return endCategoryList;
    }

  }

  void change (EndCategory endCategory) {
    Get.to(() => const CreateProductScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: endCategory
    );
  }



}