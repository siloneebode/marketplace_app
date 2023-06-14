import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_color.dart';

import '../../config/constants.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({super.key});

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
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
            child: Icon(Icons.search_outlined, color: AppColor.darkBackgroundColor,),
          )
        ],
      ),

      body: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 15,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: Text(
                  "Ton guide pour mieux vendre",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 26
                  ),
                ),
            ),

            const SizedBox(
              height: 40,
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: Text(
                  "Ton Compte",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
            ),

            const SizedBox(
              height: 15,
            ),
            ReusableWidget(() {} , 'Comment créer un compte',),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            ReusableWidget(() {} , 'Comment gérer son compte ?',),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            ReusableWidget(() {} , 'Comment sécuriser son compte ?',),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            ReusableWidget(() {} , 'Comment signaler un vendeur ?',),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            ReusableWidget(() {} , 'Comment éviter un de blocage ?',),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            ReusableWidget(() {} , 'Comment vérifier son identité ?',),

            const SizedBox(
              height: 15,
            ),

            Container(
              height: 8,
              width: double.infinity,
              color: Theme.of(context).dividerColor,
            ),
            const SizedBox(
              height: 15,
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: Text(
                  "Paiement, tarification et remboursement",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
            ),

            const SizedBox(
              height: 15,
            ),
            ReusableWidget(() {} , 'Comment effectuer un achat ?',),
            ReusableWidget(() {} , 'Comment se font les rembousement ?',),
            ReusableWidget(() {} , 'Comment faire un retrait ?',),
            ReusableWidget(() {} , 'Comment annuler un achat ?',),

          ],
        ),

      ),

    );
  }


  Widget ReusableWidget(void Function()? onTap, text){
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: kdPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15,),
                Text(
                  text,
                  style: const TextStyle(
                    //color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'silone'
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_outlined,size: 17,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
