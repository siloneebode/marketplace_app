import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_color.dart';
import '../../Components/custom_separator.dart';
import '../../config/constants.dart';
import '../password/reset_password_screen.dart';

class SecurityScreen extends StatelessWidget {

  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:  Padding(
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
        padding: const EdgeInsets.symmetric(horizontal: kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18,),
             Text(
              'Connexion et sécurité',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 60,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Mot de passe',
                          style : Theme.of(context).textTheme.displayMedium
                      ),
                      const SizedBox(width: 5,),
                      Text(
                          'Dernière mise à jour il y\'a 6 mois',
                          style: Theme.of(context).textTheme.bodyMedium
                      ),
                      const SizedBox(width: 5,),
                    ],
                  ),
                ),
                const SizedBox(width: 30,),
                InkWell(
                  onTap: () {
                    Get.to(() => const ResetPasswordScreen());
                  },
                  child: Text(
                    'Mettre à jour',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColor.green
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            const CustomSeparator(),

            const SizedBox(
              height: 25,
            ),

            Text('Historique',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Expanded(
                  flex: 2,
                    child: Icon(Icons.phone_android_outlined, size: 40, color: AppColor.grey,)
                ),
                Expanded(
                  flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Mobile device',
                            style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'Déconnecter l\'appareil',
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColor.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          'Le 14 Juin 2023 à 04:53',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Colors.grey,
                            fontSize: 15
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
            const SizedBox(height: 25,),
            const CustomSeparator(),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 2,
                    child: Icon(Icons.phone_android_outlined, size: 40, color: AppColor.grey,)
                ),
                Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile device',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'Déconnecter l\'appareil',
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              color: AppColor.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          'Le 14 Juin 2023 à 04:53',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.grey,
                              fontSize: 15
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
            const SizedBox(height: 25,),
            const CustomSeparator(),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 2,
                    child: Icon(Icons.phone_android_outlined, size: 40, color: AppColor.grey,)
                ),
                Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chrome Device',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'Déconnecter l\'appareil',
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              color: AppColor.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          'Le 7 Juin 2023 à 07:40',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.grey,
                              fontSize: 15
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget ReuseableRow(
      String text1,
      text2,
      String action,
      context,
      Function() onTap){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
              style : Theme.of(context).textTheme.displayMedium
              ),
              const SizedBox(width: 5,),
              Text(
                text2,
                  style: Theme.of(context).textTheme.bodyMedium
              ),
            ],
          ),
        ),
        const SizedBox(width: 30,),
        InkWell(
          onTap: onTap,
          child: Text(
            action,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              decoration: TextDecoration.underline
            ),
          ),
        )
      ],
    );
  }


}
