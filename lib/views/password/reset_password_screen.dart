import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_color.dart';
import 'package:marketplace_app/widgets/form/custom_field.dart';

import '../../config/constants.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child:  const Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18,),
            Text(
              'Réinitialise ton mot de passe',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10,),
            Text(
              "Saisi l'address email associé à ton compte. "
                  "Nous t'enverrons un lien par email pour réinitialiser ton mot de passe.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 35,),

            CustomTextFormField(
              label: 'Address email',
              controller: TextEditingController(),
              onChanged: (String ) {  },

            ),

            const SizedBox(height: 40,),

            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    fixedSize: const Size(double.infinity, 55),
                    maximumSize: const Size(double.infinity, double.infinity)
                  ),
                  onPressed: () {},
                  child: Text('Envoyer le lien de réinitialisation',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),
                  )),
            )

          ],
        ),
      ),
    );
  }
}
