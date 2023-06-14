import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/product/product_category_controller.dart';
import '../../../Insfrastructure/components/category_list_item.dart';
import '../../../Insfrastructure/components/customErrorWidget.dart';
import '../../../Insfrastructure/components/custom_loading.dart';

class ProductCategoryScreen extends StatelessWidget {
  const ProductCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductCategoryController controller = Get.put(ProductCategoryController());
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
        title: const Text(
          'catégorie',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18
          ),
        ),
      ),
      body: FutureBuilder(
          future: controller.getCategories(),
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
                  itemCount: controller.categoryList.length,
                  itemBuilder: (context, index) {
                    return CategoryListItem(
                      onTap: () {
                        controller.change(controller.categoryList[index]);
                      },
                      object: controller.categoryList[index],
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
