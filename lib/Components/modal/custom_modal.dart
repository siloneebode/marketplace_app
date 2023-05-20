import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Http/Controller/custom_modal_controller.dart';

class CustomModal extends StatelessWidget {
  final Size size;
  final String header;
  final Widget body;
  const CustomModal({
    Key? key,
    required this.size,
    required this.header,
    required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomModalController());
    return GetBuilder<CustomModalController>(
        builder: (_) {
        return SizedBox(
            width: size.width,
            height: size.height,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                body,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: controller.close,
                    child: const Text('close'),
                  ),
                )
              ],
            ),
          ),
        );
        }
    );
  }
}
