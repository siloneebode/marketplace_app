
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketplace_app/Http/Controller/product/create_product_controller.dart';
import 'package:marketplace_app/Http/Controller/textfield_controller.dart';

import '../Http/Controller/product/product_price_controller.dart';
import '../Widgets/textfield_widget.dart';
import '../config/constants.dart';
import '../routes/app_route.dart';
import '../widgets/form/custom_field.dart';

class ProductPriceScreen extends StatelessWidget {
   ProductPriceScreen({Key? key}) : super(key: key);

  final ProductPriceController controller = Get.put(ProductPriceController());

  Future<void> _fetchAll() async {
    final storage = GetStorage();
    final product = storage.read('product');
    if (product.price != null && product.price != double.parse(controller.priceController.text)) {
      product.price = double.parse(controller.priceController.text) ;
      storage.write('product', product);
    }

    Get.offAllNamed(AppRoute.CREATE_PRODUCT,
        arguments: double.parse(controller.priceController.text));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPriceController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Prix',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(kdPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    'Fixe un prix pour ton article',
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
                    "Pour vendre rapidement ton article, sélectionne un prix équivalent au prix des articles similaires.",
                    style: TextStyle(
                        height: 1.4,
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  CustomTextFormField(
                    label: 'Prix',
                    controller: controller.priceController,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if(value.isNotEmpty){
                        controller.updateValue(double.parse(value));
                      } else {
                        controller.updateValue(0.0);
                      }

                    },
                  ),

                  const SizedBox(
                    height: 20,
                  ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: controller.price.value.isEqual(0.0) ? Colors.grey.shade400 : Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    fixedSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    controller.price.value.isEqual(0.0) ? null :
                     _fetchAll();
                  },
                  child: const Text('Enregister',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
                ],
              ),

            ),

          );
        });
  }

}
