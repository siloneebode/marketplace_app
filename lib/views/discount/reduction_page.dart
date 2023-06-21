import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants.dart';
import '../../infrastructure/assets/app_color.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kdPadding),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),

            Text(
              "Nous travaillons encore sur la fonctionnalité de réduction par lot",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(
              height: 15,
            ),

            Text(
              "Qu'es ce qu'elle apporte concretement ? Elle te permettra"
                  " de faire des réductions aux utilisateurs qui t'achetent des articles en lot.",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 17
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  fixedSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                },
                child: Text('J\'ai compris',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600
                  ),
                ))

          ],
        ),

      ),

    );
  }
}
