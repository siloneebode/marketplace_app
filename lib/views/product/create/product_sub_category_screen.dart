import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/product/product_sub_category_controller.dart';
import '../../../Insfrastructure/components/category_list_item.dart';
import '../../../Insfrastructure/components/customErrorWidget.dart';
import '../../../Insfrastructure/components/custom_loading.dart';

class ProductSubCategoryScreen extends StatelessWidget {
  const ProductSubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductSubCategoryController controller = Get.put(ProductSubCategoryController());
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          controller.categorySelected.name,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 18
          ),
        ),
      ),
      body: FutureBuilder(
          future: controller.getSubCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return CustomErrorWidget(snapshot.error);
            }

            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.subCategoryList.length,
                      itemBuilder: (context, index) {
                        return CategoryListItem(
                          onTap: () {
                            controller.change(controller.subCategoryList[index]);
                          },
                          object: controller.subCategoryList[index],
                        );
                      }
                  )
                ],
              );
            }

            return const CustomLoading();

          }
      ),
    );
  }
}
