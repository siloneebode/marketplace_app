import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/informations/legal_name_controller.dart';


class LegalNameSheet extends StatelessWidget {

  final LegalNameController controller = Get.put(LegalNameController());
  LegalNameSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.fields;
  }
}
