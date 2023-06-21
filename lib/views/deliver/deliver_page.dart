import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/custom_separator.dart';
import '../../infrastructure/assets/app_fonts.dart';
import '../../infrastructure/assets/app_image_assets.dart';

class DeliverPage extends StatelessWidget {
  const DeliverPage({super.key});

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

      body: Container(
        padding: const EdgeInsets.all(18),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'deliver_page_title'.tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 5,),

             Text(
              "deliver_page_subtitle".tr,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 30,),
            
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    AppImage.yango,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,),
                ),
                SizedBox(width: 20,),
                 Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Yango Delivery ' ,
                        style: Theme.of(context).textTheme.displayMedium,),
                      SizedBox(height: 5,),
                      Text.rich(
                          TextSpan(
                              text: "Ce liveur délivre généralement sous 2 jours ouvrés. Dépose ton colis dans ",
                              style: Theme.of(context).textTheme.displaySmall,
                              children: [
                                TextSpan(
                                    text: 'le point relais ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Theme.of(context).colorScheme.primary,
                                      fontFamily: AppFonts.silone,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'le plus proche',
                                        style: Theme.of(context).textTheme.displaySmall,
                                      )
                                    ]
                                ),

                              ]
                          )
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                    trackColor: Colors.grey,
                    activeColor: Colors.black,
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            const CustomSeparator(),
            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    AppImage.bee_delivery,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Bee Delivery' ,
                        style: Theme.of(context).textTheme.displayMedium,),
                      SizedBox(height: 5,),
                      Text.rich(
                          TextSpan(
                              text: "Ce liveur délivre généralement sous 2 jours ouvrés. Dépose ton colis dans ",
                              style: Theme.of(context).textTheme.displaySmall,
                              children: [
                                TextSpan(
                                    text: 'le point relais ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Theme.of(context).colorScheme.primary,
                                      fontFamily: AppFonts.silone,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'le plus proche',
                                        style: Theme.of(context).textTheme.displaySmall,
                                      )
                                    ]
                                ),

                              ]
                          )
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                    trackColor: Colors.grey,
                    activeColor: Colors.black,
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            const CustomSeparator(),
            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    AppImage.lara_deliveries,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Lara Delivery' ,
                        style: Theme.of(context).textTheme.displayMedium,),
                      SizedBox(height: 5,),
                      Text.rich(
                        TextSpan(
                          text: "Ce liveur délivre généralement sous 2 jours ouvrés. Dépose ton colis dans ",
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                            TextSpan(
                              text: 'le point relais ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontFamily: AppFonts.silone,
                              ),
                              children: [
                                TextSpan(
                                  text: 'le plus proche',
                                  style: Theme.of(context).textTheme.displaySmall,
                                )
                              ]
                            ),

                          ]
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                    trackColor: Colors.grey,
                    activeColor: Colors.black,
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
