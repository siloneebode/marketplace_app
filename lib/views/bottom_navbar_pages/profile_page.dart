
import 'package:flutter/material.dart';
import 'package:marketplace_app/views/bottom_navbar_pages/profile_detail_page.dart';
import 'package:marketplace_app/views/notification_page.dart';
import 'package:marketplace_app/views/order/order_page.dart';
import 'package:marketplace_app/views/profil/account_informations_page.dart';
import 'package:marketplace_app/views/profil/wallet_page.dart';
import 'package:marketplace_app/views/translation/translation_page.dart';

import '../../config/constants.dart';
import '../favoris/favoris_page.dart';
import '../profil/langue_page.dart';
import '../profil/security_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: kdPadding),
              child: Text(
                'Profil',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileDetailPage()));
              },
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: kdPadding,vertical: 10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        'assets/download.png'
                      ),
                      radius: 25,
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Silone',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                            ),
                          ),
                          Text(
                            'Afficher le profil',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 17,),
                  ],
                ),
              ),
            ),

            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            const SizedBox(height: 15,),

             const Padding(
               padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 12),
               child: Text(
                 'Paramètres',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 23,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
            const SizedBox(height: 10,),
            _reusablaWidget(
                (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AccountInformationPage()));
                },
              Icons.account_circle_outlined,
              'Informations du compte'
            ),
            _reusablaWidget(
                    (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecurityPage()));
                    },
                Icons.shield_outlined,
                'Connexion et securité'
            ),
            _reusablaWidget(
                    (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const WalletPage()));},
                Icons.account_balance_wallet_outlined,
                'Mon portemonaie'
            ),
            _reusablaWidget(
                    (){

                    },
                Icons.settings_outlined,
                'Personnalisation'
            ),

            _reusablaWidget(
                    (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FavorisPage()));
                },
                Icons.favorite_border_outlined,
                'mes favoris'
            ),

            _reusablaWidget(
                    (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
                },
                Icons.sell_outlined,
                'mes commandes'
            ),

            _reusablaWidget(
                    (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LanguePage()));
                    },
                Icons.language_outlined,
                'Langue et traduction'
            ),

            _reusablaWidget(
                    (){Navigator.push(context, MaterialPageRoute(builder: (context) => const TranslationPage()));},
                Icons.g_translate_sharp,
                'Traduction'
            ),

            const SizedBox(height: 25,),

            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 12),
              child: Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            _reusablaWidget(
                    (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationPage()));
                },
                Icons.notifications_outlined,
                'Notifications push'
            ),

            _reusablaWidget(
                    (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationPage()));
                },
                Icons.email_outlined,
                'Notifications par email'
            ),

            const SizedBox(height: 25,),

            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 12),
              child: Text(
                'Assistance',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            _reusablaWidget(
                    (){},
                Icons.assistant_direction_outlined,
                "Fonctionnement de xxxx"
            ),



            _reusablaWidget(
                    (){},
                Icons.headphones,
                'Centre de sécurité'
            ),

          ],
        ),
      ),
    );
  }
  Widget _reusablaWidget(void Function()? onTap,IconData? icon,String text){
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 15,horizontal: kdPadding),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 25,
                ),
                const SizedBox(width: 15,),
                Text(
                  text,
                  style: const TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.w400,
                  fontSize: 15,
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
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
          child: Container(height: 1,width: double.infinity,color: Colors.black12,),
        ),
      ],
    );
  }



  Widget _reusablaWidget2(void Function()? onTap,IconData? icon,String text){
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: kdPadding,vertical: kdPadding),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 25,
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(height: 2,),
                      Text(
                        text,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_outlined,size: 17,
                )
              ],
            ),
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
            child: Container(height: 1,width: double.infinity,color: Colors.black12,),
          ),
        ],
      ),
    );
  }
}
