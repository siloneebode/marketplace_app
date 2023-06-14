import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/product/product_size_controller.dart';

import '../../../Insfrastructure/components/category_list_item.dart';
import '../../../Insfrastructure/components/customErrorWidget.dart';
import '../../../Insfrastructure/components/custom_loading.dart';

class ProductSizeScreen extends StatelessWidget {
  const ProductSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductSizeController controller = Get.put(ProductSizeController());
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
          'Taille',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18
          ),
        ),
      ),
      body: FutureBuilder(
          future: controller.getData(),
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
                      itemCount: controller.sizeList.length,
                      itemBuilder: (context, index) {
                        return CategoryListItem(
                          onTap: () {
                            controller.change(controller.sizeList[index]);
                          },
                          object: controller.sizeList[index],
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
