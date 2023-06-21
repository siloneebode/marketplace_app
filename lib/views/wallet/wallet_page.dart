import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Components/custom_separator.dart';
import 'package:marketplace_app/config/constants.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> data = [
      0,
      10,
      50,
      20,
      5000,
      15000,
      65200,
      14785,
      222000,
      0,

    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Padding(
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
            const SizedBox(height: 15,),
            Text(
              'Gains',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 20,),

            Text('3500,4520 XAF', style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 5,),
            Text('Gain comptabilisés pour 2023', style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 25,),
            const CustomSeparator(),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Montant en attente ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const Spacer(),

                Text('25,000 XAF', style: Theme.of(context).textTheme.displayMedium,),
              ],
            ),
            const SizedBox(height: 25,),
            const CustomSeparator(),
            const SizedBox(height: 30),

            Text(
              'Statistiques',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 35),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          '500', style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Revenus du mois de Juin', style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    )),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0', style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Revenus en cours', style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    )),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5', style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Clics sur les annonces ', style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    )),
              ]
            ),
            const SizedBox(height: 15,),
            const CustomSeparator(),
            const SizedBox(height: 15,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'S/O', style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Taux de réponse', style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      )),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '0', style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Annonces refusées', style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      )),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3', style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'nouvelles annonces', style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      )),
                ]
            ),
          ],
        ),
      ),
    );
  }
}

