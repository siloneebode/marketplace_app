import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_app/infrastructure/assets/app_image_assets.dart';
import '../../Widgets/AppButtons/app_button.dart';
import '../../config/constants.dart';
import '../../infrastructure/assets/app_color.dart';

class CheckoutScreen extends StatelessWidget {
   CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            )
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Icon(Icons.arrow_back,
                color: Colors.black, size: 22,
                weight: 900,
              ),
            )
        ),
        title: Text(
          'Confirmer et payer',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontFamily: 'silone',
          ),
          overflow: TextOverflow.clip,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage(AppImage.babouche,),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Robe pour femme rouge avec fente',
                              style: Get.theme.textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColor.black
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(TextSpan(children: <InlineSpan>[
                              TextSpan(
                                text: 'Tres bonne état',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ])),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(TextSpan(children: <InlineSpan>[
                              TextSpan(
                                text: 'Hermes',
                                style: TextStyle(
                                  color: AppColor.green,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  decoration: TextDecoration.underline
                                ),
                              ),
                            ])),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text.rich(TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text: 'Ton achat est protégé par notre ',
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 14,
                          height: 1.4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      TextSpan(
                        text: "politique de remboursement en cas de litige ",
                        style: TextStyle(
                          color: AppColor.green,
                          fontSize: 14,
                          height: 1.4,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          decoration: TextDecoration.underline
                        ),
                      )
                    ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Choisi une méthode de livraison ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AppImage.yango,
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Yango delivery',
                          style: Get.theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                          },
                          child: Text(
                            'Changer',
                            style: Get.theme.textTheme.displayMedium?.copyWith(
                              color: AppColor.black,
                              fontSize: 15,
                              decoration: TextDecoration.underline
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'En savoir plus',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Address de livraison',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: InkWell(
                        onTap: () {
                        },
                        child: Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Domicile',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'Tel : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '+237 697690128',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ]
                                  ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: 'Ville : ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Yaounde',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ]
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: 'Quartier : ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Anguissa Menuiserie Noussi',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ]
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
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
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: InkWell(
                      onTap: () {
                      },
                      child: Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bureau',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: 'Tel : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '+237 677226914',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ]
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: 'Ville : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Yaounde',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ]
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: 'Quartier : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Warda',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ]
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
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
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Ajoute une nouvelle address',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Paye avec',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Mode de paiement',
                          style: TextStyle(color: Colors.black),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.black,
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            child: Text(
                              'Ajouter',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Conditions d\'annulation',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text.rich(TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text:
                        'Une fois la commande enregistrée, Tu peux encore l\'annuler tant que l\'e vendeur ne l\'a '
                            'pas encore expédié. Passé ce moment, il ne sera plus possible pour toi d\'annuler ta transaction. ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          height: 1.4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      TextSpan(
                        text: 'En savoir plus',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ])),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Details du prix',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _reuseableRow("Prix de l'article ", '6000'),
                  SizedBox(
                    height: 10,
                  ),
                  _reuseableRow('Authentification physique ', '0'),
                  SizedBox(
                    height: 10,
                  ),
                  _reuseableRow('frais de service', '350'),
                  SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      children: [
                        Text(
                          'Total (XAF)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '6350',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                      ],
                    ),
                  ),


                  const SizedBox(
                    height: 35,
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Column(
                        children: [
                          const Text.rich(
                            TextSpan(
                                text: "En cliquant sur le boutton ci dessous, j'accepte les conditions d'utilisation de la plateforme. ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ),
                          SizedBox(height: 5,),
                          AppButton(
                              text: 'Payer', buttoncolor: AppColor.green
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _reuseableRow(String text1, String text2) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kdPadding),
      child: Row(
        children: [
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,

            ),
          ),
        ],
      ),
    );
  }
}
