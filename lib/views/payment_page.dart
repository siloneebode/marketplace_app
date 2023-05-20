
import 'package:flutter/material.dart';

import '../Widgets/AppButtons/app_button.dart';
import '../Widgets/textfield_widget.dart';
import '../config/constants.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController _controller = TextEditingController();
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 17,
                  ),
                  Spacer(),
                  Text(
                    'Confimer et payer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: CustomTextField(
                label: 'Name',
                controller: _controller,
                obscureText: false,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
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
                                  image: AssetImage(
                                    'assets/download.png',
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Robe pour femme rouge avec fente',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Etat : ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Tres bonne etat',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
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
                                  text: 'Marque : ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Dior',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
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
                                  text: 'Livraison : ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Livraison par le vendeur',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 11,
                                    overflow: TextOverflow.ellipsis,
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
                          text: 'Votre reservation est protegee par ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        TextSpan(
                          text: 'air',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'cover',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Par que schactezvous tore tire',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                                    image: AssetImage(
                                      'assets/Campost_logo.png',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Compost',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30)),
                                ),
                                builder: (context) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: kdPadding, vertical: 10),
                                    child: Wrap(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Spacer(),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Payez avec',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            Spacer(),
                                            InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                                child: Icon(Icons.close)),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 2,
                                          width: double.infinity,
                                          color: Colors.grey.shade200,
                                        ),
                                        const ListTile(
                                          leading: Icon(
                                            Icons.security,
                                            color: Colors.grey,
                                          ),
                                          title: Text(
                                            'Mon portemonaie',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 2,
                                          width: double.infinity,
                                          color: Colors.grey.shade200,
                                        ),
                                        const ListTile(
                                          leading: Icon(
                                            Icons.access_time_rounded,
                                            color: Colors.grey,
                                          ),
                                          title: Text(
                                            'Orange money',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 2,
                                          width: double.infinity,
                                          color: Colors.grey.shade200,
                                        ),
                                        const ListTile(
                                          leading: Icon(
                                            Icons.monetization_on_sharp,
                                            color: Colors.grey,
                                          ),
                                          title: Text(
                                            'Mobile money',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: const Text(
                              'modifier',
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
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
                    SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Choisissez comment vous souhaitez payer',
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (ischecked == false) {
                              ischecked = true;
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payez la totalite',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Payez maintenant le montant (\$476,37) et vous aurez termine',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
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
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: ischecked ? 5 : 1,
                                  )),
                            ),
                          ],
                        ),
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
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (ischecked == true) {
                              ischecked = false;
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payez une partie maintenantet l\'autre plus tard',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '\$238,19 due today, \$238,18 on 13 oct. 2023. No extra fees.',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
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
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: ischecked ? 1 : 5,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Plus d\'informations',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Payez avec',
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Mode de paiement',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  color: Colors.black,
                                )),
                            child: Padding(
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Saisissez un coupon',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
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
                    Padding(
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text.rich(TextSpan(children: <InlineSpan>[
                        TextSpan(
                          text:
                              'annulation gratiute avant le 21 oct.. Si vous annulez avant l\'arrivee prevue le 26 oct., vous aurez droit un remboursement partiel. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        TextSpan(
                          text: 'En savoir plus',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Rules de base',
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Nous demandours a tous les voyages de se souvenir de quelques regles simples qui contribueront a rendre leur agreable, pour eux comme les hotes.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Respectez le reglement interieur',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 14),
                            child: CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'Traitez le logement de votre hote comme si c\'etait le votre',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Details du prix',
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
                    _reuseableRow('\$7250 * 5 nuits', '\$362,50'),
                    SizedBox(
                      height: 10,
                    ),
                    _reuseableRow('Faris de menage', '\$54,93'),
                    SizedBox(
                      height: 10,
                    ),
                    _reuseableRow('Faris de service', '\$58,94'),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          Text(
                            'Total(USD)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$476,37',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Plus d\'informations',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: AppButton(
                  text: 'Demande de reservation', buttoncolor: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
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
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Spacer(),
          Text(
            text2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
