import 'package:get/get.dart';
import 'package:marketplace_app/domain/product/end_category_model.dart';
import 'package:marketplace_app/domain/product/sub_category_model.dart';
import 'package:marketplace_app/views/product/create/create_product_screen.dart';


class ProductEndCategoryController extends GetxController {
  RxList<EndCategory> endCategoryList = List<EndCategory>.empty(growable: true)
      .obs;

  late SubCategory subCategorySelected;

  //late SubCategory subCategorySelected;

  @override
  void onInit() {
    var subCategory = Get.arguments;
    if (subCategory != null) {
      subCategorySelected = subCategory;
    }
    super.onInit();
  }

  Future getSubCategories() async {
    //var url = "$baseUrl/api/end-categories?populate=sub_category&filters[sub_category][id][\$eq]=${subCategorySelected.id}";

  }


  void change(EndCategory endCategory) {
    Get.to(() => const CreateProductScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: endCategory
    );
  }

}
