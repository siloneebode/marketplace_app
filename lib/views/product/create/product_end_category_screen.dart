import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Http/Controller/product/product_end_category_controller.dart';
import '../../../Insfrastructure/components/category_list_item.dart';
import '../../../Insfrastructure/components/customErrorWidget.dart';
import '../../../Insfrastructure/components/custom_loading.dart';

class ProductEndCategoryScreen extends StatelessWidget {
  const ProductEndCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductEndCategoryController controller = Get.put(ProductEndCategoryController());
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
          controller.subCategorySelected.name,
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
                      itemCount: controller.endCategoryList.length,
                      itemBuilder: (context, index) {
                        return CategoryListItem(
                          onTap: () {
                            controller.change(controller.endCategoryList[index]);
                          },
                          object: controller.endCategoryList[index],
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
