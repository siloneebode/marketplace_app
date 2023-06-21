import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/product/product_brand_controller.dart';
import 'package:marketplace_app/widgets/form/custom_field.dart';

import '../../../infrastructure/components/category_list_item.dart';
import '../../../infrastructure/components/custom_loading.dart';

class ProductBrandScreen extends StatelessWidget {
  const ProductBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductBrandController controller = Get.put(ProductBrandController());
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
          'Marque',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18
          ),
        ),
      ),
      body: FutureBuilder(
          future: null,
          builder: (context, snapshot) {


            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: CustomTextFormField(
                      prefix: const Icon(Icons.search),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text('+237'),
                        ),
                      controller: TextEditingController(),
                      onChanged: (String) {  },

                    ),
                  ),
                  const SizedBox(height: 20,),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.brandList.length,
                      itemBuilder: (context, index) {
                        return CategoryListItem(
                          onTap: () {
                            //controller.change(controller.brandList[index]);
                          },
                          object: controller.brandList[index],
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
