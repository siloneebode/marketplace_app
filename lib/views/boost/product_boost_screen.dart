import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_color.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_image_assets.dart';
import 'package:marketplace_app/config/constants.dart';

import '../../Components/custom_separator.dart';

class ProductBoostScreen extends StatelessWidget {
  const ProductBoostScreen({super.key});

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
            SizedBox(
              height: 15,
            ),

            Text(
              'Boost ton article',
              style: Theme.of(context).textTheme.titleLarge
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              "Boost ton article pour qu'il apparaisse dans le top des recherches.",
              style: TextStyle(
                  height: 1.4,
                  fontSize: 16,
                  fontFamily: 'silone'),
            ),

            const CustomSeparator(height: 20,),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                    child: Text(
                      '2 articles',
                      style: Theme.of(context).textTheme.displayMedium,
                    )),
                 Expanded(
                  flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImage.babouche, width: 35, height: 35,),
                        const SizedBox(width: 3,),
                        Image.asset(AppImage.modele, width: 35, height: 35,),
                        const SizedBox(width: 3,),
                        InkWell(
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.green),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: AppColor.green,
                                    size: 20,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),

            const CustomSeparator(height: 20,),
            SizedBox(
              height: 30,
            ),

            Text(
                'Choisi un plan',
                style: Theme.of(context).textTheme.titleMedium
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('3 jours',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),

                const Spacer(),

                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text('300 XAF',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: AppColor.darkBackgroundColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColor.green,
                                width: 8 ,
                              )),
                        ),
                      ],
                    ))


              ],
            ),
            const CustomSeparator(height: 20,),
            SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('7 jours',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    SizedBox(height: 7,),
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 4,

                        ),

                        decoration: BoxDecoration(
                            color: AppColor.green,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          'RECOMMANDÉ',
                          style: TextStyle(
                              fontSize: 9,
                              fontFamily: 'silone',
                              fontWeight: FontWeight.w600,
                              color: AppColor.white
                          ),
                        )
                    ),


                  ],
                ),

                const Spacer(),

                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text('500 XAF',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: AppColor.darkBackgroundColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColor.grey2,
                                width: 1 ,
                              )),
                        ),
                      ],
                    ))


              ],
            ),
            const CustomSeparator(height: 20,),
          ],
        ),

      ),

      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                fixedSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
              },
              child: Text('Finalise ta commande (300)',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w600
                ),
              ))
      ),
    );
  }
}
