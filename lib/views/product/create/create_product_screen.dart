import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/product/create_product_controller.dart';
import 'package:marketplace_app/views/color/color_screen.dart';
import 'package:marketplace_app/views/product/create/product_category_screen.dart';
import 'package:marketplace_app/views/product/create/product_image_screen.dart';
import 'package:marketplace_app/views/product/create/product_brand_screen.dart';
import 'package:marketplace_app/views/product_price_screen.dart';

import '../../../Insfrastructure/custom_functions.dart';

class CreateProductScreen extends GetView<CreateProductController> {

    const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CreateProductController controller = Get.put(CreateProductController());
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            'sell_our_article'.tr,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),

        body: GetBuilder<CreateProductController>(
            initState: (_) {
              var data = Get.arguments ;
              if (data != null) {
                controller.images.addAllIf(controller.images.length <= 10, data);
              }

            },
            builder: (controller) {
              return Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15,),
                             Text(
                               'sell_article_title'.tr,
                               style: Theme.of(context).textTheme.titleLarge,
                            ),

                            const SizedBox(height: 20,),
                            InkWell(
                              onTap: () {
                                Get.to(() => ProductImageScrren());
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children:  [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.onBackground,
                                        border: Border.all(
                                            color: Theme.of(context).colorScheme.onBackground,
                                            width: 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Theme.of(context).colorScheme.secondary,
                                          size: 15,),
                                      ),
                                    ),
                                    const SizedBox(width: 12,),
                                    Text(
                                      'photos'.tr,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Theme.of(context).dividerColor,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => ProductPriceScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.onBackground,
                                        border: Border.all(
                                            color: Theme.of(context).colorScheme.onBackground,
                                            width: 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Theme.of(context).colorScheme.secondary,
                                          size: 15,),
                                      ),
                                    ),
                                    const SizedBox(width: 12,),
                                     Text(
                                      'price'.tr,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Theme.of(context).dividerColor,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const ColorScreen());
                              },
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black, width: 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Theme.of(context).colorScheme.primary,
                                              fontFamily: 'silone'
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12,),
                                     Text(
                                      'color'.tr,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Theme.of(context).dividerColor,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => ProductPriceScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black, width: 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Theme.of(context).colorScheme.primary,
                                              fontFamily: 'silone'
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12,),
                                    Text(
                                      'color'.tr,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Theme.of(context).dividerColor,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const ProductCategoryScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black, width: 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Theme.of(context).colorScheme.primary,
                                              fontFamily: 'silone'
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12,),
                                    Text(
                                      'color'.tr,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Theme.of(context).dividerColor,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const ProductBrandScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black, width: 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Theme.of(context).colorScheme.primary,
                                              fontFamily: 'silone'
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12,),
                                    Text(
                                      'color'.tr,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Theme.of(context).dividerColor,
                            ),
                          ],
                        ),

                      )
                  )
                ],
              );
            }


        ),

      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                fixedSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
              },
              child: const Text('Valide ton article',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))
      ),

    );
  }
}
