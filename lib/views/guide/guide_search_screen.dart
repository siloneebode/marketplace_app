import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/widgets/form/custom_field.dart';

import '../../Insfrastructure/assets/app_color.dart';
import '../../config/constants.dart';

class GuideSearchScreen extends StatelessWidget {
  const GuideSearchScreen({super.key});

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
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Text(
                "Recherche",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 26
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.all(10),
              child: CustomTextFormField(
                prefix: const Icon(Icons.search),
                label: 'Recherche dans le guide',
                controller: TextEditingController(),
                onChanged: (String) {  },

              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Text(
                "Articles recommandés",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(
                          child: Center(
                            child: Icon(Icons.article_outlined, size: 50, color: AppColor.grey,),
                          ),
                        )),
                    Expanded(
                      flex: 8,
                        child: Text(
                          'Que faire si je souhaite annuler un achat effectué il y\'a 2 jours ?',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                  ],
                ),
                Row(),
                Row(),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(
                          child: Center(
                            child: Icon(Icons.article_outlined, size: 50, color: AppColor.grey,),
                          ),
                        )),
                    Expanded(
                      flex: 8,
                        child: Text(
                          'Mon compte a été bloqué que faire ?',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                  ],
                ),
                Row(),
                Row(),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(
                          child: Center(
                            child: Icon(Icons.article_outlined, size: 50, color: AppColor.grey,),
                          ),
                        )),
                    Expanded(
                      flex: 8,
                        child: Text(
                          'Que faire quand je reçois un article non conforme à la description ?',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                  ],
                ),
                Row(),
                Row(),
              ],
            ),


          ],
        ),

      ),

    );
  }
}
