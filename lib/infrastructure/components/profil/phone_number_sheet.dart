import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/informations/phone_number_controller.dart';

class PhoneNumberSheet extends StatelessWidget {

  final PhoneNumberController controller = Get.put(PhoneNumberController());
  PhoneNumberSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.fields;
  }
}