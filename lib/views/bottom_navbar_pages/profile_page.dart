
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_app/views/auth/account_suspended.dart';
import 'package:marketplace_app/views/boost/product_boost_screen.dart';
import 'package:marketplace_app/views/bottom_navbar_pages/profile_detail_page.dart';
import 'package:marketplace_app/views/checkout/checkout_screen.dart';
import 'package:marketplace_app/views/conversation/conversation_screen.dart';
import 'package:marketplace_app/views/discount/reduction_page.dart';
import 'package:marketplace_app/views/guide/guide_search_screen.dart';
import 'package:marketplace_app/views/notification_page.dart';
import 'package:marketplace_app/views/order/order_page.dart';
import 'package:marketplace_app/views/product/product_detail_screen.dart';
import 'package:marketplace_app/views/profil/profil_details_screen.dart';
import 'package:marketplace_app/views/user-informations/account_informations_page.dart';
import 'package:marketplace_app/views/vacation/vacance_mode_screen.dart';
import 'package:marketplace_app/views/wallet/wallet_page.dart';
import 'package:marketplace_app/views/translation/translation_page.dart';

import '../../config/constants.dart';
import '../deliver/deliver_page.dart';
import '../favoris/favoris_page.dart';
import '../guide/guide_screen.dart';
import '../profil/langue_page.dart';
import '../security/security_page.dart';
import '../versement/versement_screen.dart';

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
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Text(
                'Profil',
                style: Get.theme.textTheme.titleLarge
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                Get.to(() => const ProfileDetailScreen());
              },
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        'assets/download.png'
                      ),
                      radius: 25,
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                              fontWeight: FontWeight.w400,
                              fontFamily: 'silone'
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,size: 17,),
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
                   fontFamily: 'silone_bold',
                 ),
               ),
             ),
            const SizedBox(height: 10,),
            _reusablaWidget(
                (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AccountInformationScreen()));
                },
              Icons.account_circle_outlined,
              'Informations du compte'
            ),
            _reusablaWidget(
                    (){ Get.to(() => const SecurityScreen()); },
                Icons.shield_outlined,
                'Connexion et securité'
            ),
            _reusablaWidget(
                    (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyWalletScreen()));},
                Icons.account_balance_wallet_outlined,
                'Mon portemonaie'
            ),
            _reusablaWidget(
                    (){Get.to(() => const ProductBoostScreen());},
                Icons.settings_outlined,
                'Personnalisation'
            ),

            _reusablaWidget(
                    (){
                      Get.to(()=> const VacationModeScreen());
                    },
                Icons.toggle_off_outlined,
                'Mode Vacances'
            ),
            _reusablaWidget(
                    (){
                  Get.to(()=> const ProductDetailScreen());
                },
                Icons.production_quantity_limits,
                'Détail du produit'
            ),
            _reusablaWidget(
                    (){
                  Get.to(()=> const AccountSuspendedScreen());
                },
                Icons.block_outlined,
                'Compte bloqué'
            ),
            _reusablaWidget(
                    (){
                  Get.to(()=> const ConversationScreen());
                },
                Icons.chat_bubble_outline,
                'Conversation'
            ),
            _reusablaWidget(
                    (){
                  Get.to(()=> CheckoutScreen());
                },
                Icons.library_add_check_outlined,
                'Checkout'
            ),
            _reusablaWidget(
                    (){
                  Get.to(()=> const VersementModePage());
                },
                Icons.clean_hands_outlined,
                'Mode de Versement'
            ),

            _reusablaWidget(
                    (){Get.to(() => const FavorisPage());},
                Icons.favorite_border_outlined,
                'Mes favoris'
            ),

            _reusablaWidget((){
              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
              },
                Icons.sell_outlined,
                'Mes commandes'
            ),

            _reusablaWidget(
                    (){
                  Get.to(() => const DeliverPage());
                },
                Icons.delivery_dining_outlined,
                'Méthode d\'envoi'
            ),

            _reusablaWidget(
                    (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DiscountScreen()));
                },
                Icons.sell_outlined,
                'Mes réductions'
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
                  fontFamily:  'silone_bold',
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
                  fontFamily: 'silone_bold',
                ),
              ),
            ),

            _reusablaWidget(
                    (){
                      Get.to(() => const GuideScreen());
                    },
                Icons.help_outline,
                "Ton guide"
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
