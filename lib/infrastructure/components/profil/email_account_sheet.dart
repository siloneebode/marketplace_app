import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/informations/email_account_controller.dart';

class EmailAccountSheet extends StatelessWidget {

  final EmailAccountController controller = Get.put(EmailAccountController());
  EmailAccountSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.fields;
  }
}