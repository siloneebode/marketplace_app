import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Domain/product/test_page_screen.dart';
import 'package:marketplace_app/Http/Controller/product/create_product_controller.dart';
import 'package:marketplace_app/views/color/color_screen.dart';
import 'package:marketplace_app/views/product/create/product_image_screen.dart';
import 'package:marketplace_app/views/product_price_screen.dart';

import '../../../Insfrastructure/custom_functions.dart';

class CreateProductScreen extends GetView<CreateProductController> {

    const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CreateProductController controller = Get.put(CreateProductController());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: const Text(
            'Vends ton article',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16
            ),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                goTo(ProductImageScrren());
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children:  [
                                    Text(
                                      'Ajoute des photos',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.check,
                                      size: 25,
                                      weight: 100,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 4,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => ProductPriceScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Prix',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),

                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: controller.price.value.isNull ? const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 17,
                                        color: Colors.grey,
                                      ) : null,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => ColorScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Couleur',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),

                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 17,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => ProductPriceScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Prix',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),

                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: controller.price.value.isNull ? const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 17,
                                        color: Colors.grey,
                                      ) : null,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const TestPageScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Test',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),

                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: controller.price.value.isNull ? const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 17,
                                        color: Colors.grey,
                                      ) : null,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      )
                  )
                ],
              );
            }


        )
    );
  }
}
