import 'package:get/get.dart';
import 'package:marketplace_app/domain/product/sub_category_model.dart';
import 'package:marketplace_app/views/product/create/product_end_category_screen.dart';
import '../../../domain/product/category_model.dart';


class ProductSubCategoryController extends GetxController {
  RxList<SubCategory> subCategoryList = List<SubCategory>.empty(growable: true).obs ;
  late Category categorySelected ;
  late SubCategory subCategorySelected;
  @override
  void onInit() {
    var category = Get.arguments;
    categorySelected = category;
    super.onInit();
  }

  Future getSubCategories () async {
    ///var params = "[category][id][\$eq]";
    //var url = "$baseUrl/api/sub-categories?populate=category&filters$params=${categorySelected.id}";

  }

  void change (SubCategory subCategory) {
    Get.to(() => const ProductEndCategoryScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        arguments: subCategory
    );
  }



}