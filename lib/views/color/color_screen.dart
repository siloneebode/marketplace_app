import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Http/Controller/product/color_controller.dart';
import '../../Insfrastructure/components/customErrorWidget.dart';
import '../../Insfrastructure/components/custom_empty_widget.dart';
import '../../Insfrastructure/components/custom_loading.dart';
import 'color_item.dart';

class ColorScreen extends StatelessWidget {

  const ColorScreen({super.key});


   @override
  Widget build(BuildContext context) {
     ColorController controller = Get.put(ColorController());
    return GetBuilder<ColorController>(
        initState: (_) {
          controller.getColors();
        },
        builder: (context) => Scaffold(
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
              'Couleur',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18
              ),
            ),
          ),
          body: FutureBuilder(
            future: controller.getColors(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return CustomErrorWidget(snapshot.error);
              }

              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.colorList.length,
                  itemBuilder: (context, index) {
                    return ColorItems(controller.colorList[index]);
                  }
                );
              }

              return const CustomLoading();

            }
          ),
          bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child:  Obx(() => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: controller.colorListSelected.isEmpty ? Colors.grey.shade400 : Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    fixedSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    controller.colorListSelected.isEmpty ?
                    null : Get.back();
                  },
                  child: const Text('Enregister',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
              )
          )),
        );
  }
}
