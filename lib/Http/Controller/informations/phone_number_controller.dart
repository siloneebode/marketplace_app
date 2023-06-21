
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Components/custom_separator.dart';
import '../../../widgets/form/custom_field.dart';

class PhoneNumberController extends GetxController {

  Column get fields {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nous t'enverrons un code par SMS pour vérifier votre numéro de téléphone.",
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
                      keyboardType: TextInputType.number,
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text('Numéro de téléphone'),
                      ),
                      controller: TextEditingController(),
                      onChanged: (String) {},
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                        LengthLimitingTextInputFormatter(9),
                      ],
                      prefix: Text('+237'),
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