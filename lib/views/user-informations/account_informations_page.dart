import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marketplace_app/Components/custom_separator.dart';
import 'package:marketplace_app/infrastructure/components/profil/email_account_sheet.dart';
import 'package:marketplace_app/infrastructure/components/profil/phone_number_sheet.dart';
import '../../config/constants.dart';
import '../../infrastructure/components/custom_bottom_sheet.dart';
import '../../infrastructure/components/profil/legal_name_sheet.dart';


class AccountInformationScreen extends StatelessWidget {
  const AccountInformationScreen({super.key});

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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            Text(
              'Informations du compte',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 60,
            ),
            ReuseableRow(
                'Nom et prénom',
                'Non renseigné',
                'Modifier', () => Get.bottomSheet(
                     CustomBottomSheet(
                      header: 'Nom légal',
                      body: LegalNameSheet(),
                      heightFactor: 1,
                    )
                )
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomSeparator(),
            const SizedBox(
              height: 25,
            ),
            ReuseableRow('email',
                'ebode***.com',
                'Modifier' ,
                    () => Get.bottomSheet(
                    CustomBottomSheet(
                      header: 'Address email',
                      body: EmailAccountSheet(),
                      heightFactor: 0.7,
                    )
                ) ),
            const SizedBox(
              height: 25,
            ),
            const CustomSeparator(),
            const SizedBox(
              height: 25,
            ),
            ReuseableRow(
                'Numéro de téléphone ',
                'Ce numéro servira pour recevoir des fonds quand vous allez solliciter un virement',
                'Ajouter',
                    () => Get.bottomSheet(
                    CustomBottomSheet(
                      header: 'Ajoute un numéro de téléphone',
                      body: PhoneNumberSheet(),
                      heightFactor: 0.7,
                    )
                )
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomSeparator(),
            const SizedBox(
              height: 25,
            ),
            ReuseableRow(
                'Address',
                'Non fourni',
                'Ajouter',
                    () => showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)
                    ),
                  ),
                  builder: (context) {
                    return const CustomBottomSheet(header: 'Address',);
                  },
                )
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomSeparator(),
            const SizedBox(
              height: 25,
            ),
            ReuseableRow(
                'Pièce d\'identité',
                'Non fournie',
                'Ajouter',
                    () => showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)
                    ),
                  ),
                  builder: (context) {
                    return Padding(
                      padding:  const EdgeInsets.symmetric(vertical: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: const Icon(Icons.close)),
                            const SizedBox(height: 40,),
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: kdPadding),
                              child: Text(
                                'Reconnaissance et accomplissements',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: kdPadding),
                              child: Text(
                                'Beneficiez d\'une reconnaissance pour avoir franchi des etapes importantes et obtenu le statut de Superhote.',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomSeparator(),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget ReuseableRow(
      String text1,
      text2, String action,
      Function() onTap
      ){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                height: 1.36,
                fontFamily: 'silone',
                //fontWeight: FontWeight.w600,
              ),
              ),
              Text(
                text2,style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.2,
                  fontFamily: 'silone'
              ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 30,),
        InkWell(
          onTap: onTap,
          child: Text(
            action ,style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              fontFamily: 'silone'
          ),
          ),
        )
      ],
    );
  }
}


