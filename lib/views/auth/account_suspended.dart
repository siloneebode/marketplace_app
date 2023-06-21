import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../config/constants.dart';
import '../../infrastructure/assets/app_color.dart';

class AccountSuspendedScreen extends StatelessWidget {
  const AccountSuspendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Ton Compte a été bloqué',
                        style: Get.theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 20,),

                    Text("Nous étions dans l'obligation de bloquer ton compte.",
                      style: Get.theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 17
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text("Certains de tes articles ne respectent pas notre politique lié à la vente d'article neufs.",
                      style: Get.theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text("Nous t'invitons à passer à un compte pro pour continuer à vendre sur la plateforme.",
                      style: Get.theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 17
                      ),
                    ),
                  ],
                )),

            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            fixedSize: const Size(double.infinity, 56),
                          ),
                          onPressed: () {
                          },
                          child: const Text('Passer à un compte pro',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),
                          )),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.grey3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: BorderSide(color: AppColor.green, width: 2)
                            ),
                            fixedSize: const Size(double.infinity, 56),
                          ),
                          onPressed: () {
                          },
                          child: const Text('Mon porte-monnaie',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),
                          )),
                    ),
                  ],
                ))
          ],
        ),
      )

    );
  }
}
