import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Components/custom_separator.dart';
import '../../../widgets/form/custom_field.dart';

class EmailAccountController extends GetxController {

  Column get fields {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Utilise une address email sécurisée",
            style: Get.theme.textTheme.bodyMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                      keyboardType: TextInputType.text,
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text('+237'),
                        ),
                      controller: TextEditingController(),
                      onChanged: (String) {},
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                    ),
                  ],
                )),
          ),
          Column(
            children: [
              const CustomSeparator(),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Get.theme.colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: const Size(double.infinity, 56),
                    ),
                    onPressed: () {
                    },
                    child: const Text('Sauvegarder',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          )
        ]);
  }
}