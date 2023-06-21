import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/infrastructure/components/customErrorWidget.dart';
import '../../Http/Controller/product/color_controller.dart';
import '../../infrastructure/components/custom_loading.dart';
import '../../infrastructure/network/response/api_status.dart';
import 'color_item.dart';

class ColorScreen extends StatelessWidget {

  const ColorScreen({super.key});

   @override
  Widget build(BuildContext context) {
     ColorController controller = Get.put(ColorController());
    return GetBuilder<ColorController>(
        initState: (_) {
          controller.getData();
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
          body: Obx((){
            switch (controller.rxRequestStatus.value) {
              case Status.LOADING:
                return const CustomLoading();
              case Status.COMPLETED:
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.colorList.length,
                    itemBuilder: (context, index) {
                      return ColorItems(controller.colorList[index]);
                    }
                );
              case Status.ERROR:
                return CustomErrorWidget(
                  getData: () {
                    controller.reload();
                  },
                  error: controller.error.toString(),
                );
              default:
                return const CustomLoading();
            }
          }),

          bottomNavigationBar: controller.rxRequestStatus.value == Status.COMPLETED
            ? BottomAppBar(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child:  Obx(() => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: controller.selectedColorList.isEmpty ? Colors.grey.shade400 : Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    fixedSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    controller.selectedColorList.isEmpty ?
                    null : Get.back();
                  },
                  child: const Text('Enregister',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
              )
          ) : null
        ),

        );
  }
}
