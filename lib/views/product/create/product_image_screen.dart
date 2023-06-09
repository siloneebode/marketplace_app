import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketplace_app/Domain/product/product_model.dart';
import 'package:marketplace_app/Http/Controller/product/product_image_controller.dart';
import 'package:marketplace_app/routes/app_route.dart';
import 'package:marketplace_app/views/product/create/pick_image_screen.dart';
import 'package:photo_manager/photo_manager.dart';

class ProductImageScrren extends StatelessWidget {

  final ProductImageController controller = Get.put(ProductImageController());
  ProductImageScrren({Key? key}) : super(key: key);

  Future<void> _initializeData() async {
    if (Get.previousRoute == '/PickImageScreen') {
      var data = Get.arguments ;
      if (data != null) {
        controller.imageSelected.addAllIf(controller.imageSelected.length <= 10, data);
        if (GetStorage().hasData('product')) {
          ProductModel product = GetStorage().read('product');
          product.images?.add(data);
          GetStorage().write('product', product);
        } else {
          ProductModel product = ProductModel(images: controller.imageSelected.toList());
          GetStorage().write('product', product);
        }
      }
    } else {
      if (GetStorage().hasData('product')) {
        ProductModel product = GetStorage().read('product');
        controller.imageSelected.addAll(product.images as Iterable);
      }
    }
  }


  @override
  Widget build(BuildContext context) {

    return GetBuilder<ProductImageController>(
      initState: (_) {
        _initializeData();
      },
        builder: (controller) =>
           Scaffold(
              appBar: AppBar(
                elevation: 0,
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

              ),

              body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Ajoute quelques photos',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Pour commencer tu dois ajouter des photos de ton article. De belles photos permettront de vendre ton article rapidement. C'est aussi simple que ça.",
                        style: TextStyle(
                            height: 1.4,
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      Expanded(
                          child: controller.imageSelected.isNotEmpty ?
                          SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 3,
                                        mainAxisSpacing: 3
                                    ),
                                    itemCount: controller.imageSelected.length + 1,
                                    itemBuilder: (BuildContext context, int index) {
                                      if (index == 0 && controller.imageSelected.length <= 10) {
                                        return GestureDetector(
                                          onTap: () {
                                            //Get.to(() => PickImageScreen());
                                          },
                                          child:  InkWell(
                                              onTap: () {
                                                Get.to(() => PickImageScreen());
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(color: Colors.grey.shade400),
                                                ),
                                                child: const Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.grey,
                                                    size: 40,
                                                  ),
                                                ),

                                              )
                                          ),
                                        );
                                      } else {
                                        return GestureDetector(
                                            onTap: () {},
                                            child: assetWidget(controller.imageSelected[index - 1])
                                        );
                                      }

                                    },
                                  ),

                                  const SizedBox(
                                    height: 20,
                                  ),

                                  const Center(
                                    child: Text(
                                      "Ajoute jusqu'à 10 photos",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )

                                ]
                            ),
                          ):
                          Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  InkWell(
                                      onTap: () async {
                                        Get.to(() => PickImageScreen());
                                      },

                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.grey.shade400,
                                            )),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.add,
                                                color: Colors.black,
                                                size: 25,
                                              ),
                                              SizedBox(width: 20,),
                                              Text(
                                                'Ajoute des photos',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              SizedBox(height: 10,)
                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 70,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          border: Border.all(
                                            color: Colors.grey.shade400,
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.camera_alt_outlined,
                                              color: Colors.black,
                                              size: 25,
                                            ),
                                            SizedBox(width: 20,),
                                            Text(
                                              'Prend de nouvelles photos',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            SizedBox(height: 10,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ]
                            ),
                          )
                      ),

                    ]
                ),
              ),

               bottomNavigationBar:
               controller.imageSelected.isNotEmpty ?
               BottomAppBar(
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
                         Get.offAllNamed(AppRoute.CREATE_PRODUCT,
                             arguments: controller.imageSelected);
                       },
                       child: const Text('Enregister',
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                         ),
                       ))
                   ) : null
           )
          );
  }

  Widget assetWidget(AssetEntity assetEntity) {
    return Stack(
      children: [
        Positioned.fill(
            child: AssetEntityImage(
              assetEntity,
              isOriginal: false,
              thumbnailSize: const ThumbnailSize(300, 300),
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return const Center(
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    )
                );
              },
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GestureDetector(
              onTap: () {
                controller.imageSelected.remove(assetEntity);
                controller.update();
                ProductModel product = GetStorage().read('product');
                if(product != null) {
                  product.images = controller.imageSelected;
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      size: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
        ),
      ],);

  }




}
