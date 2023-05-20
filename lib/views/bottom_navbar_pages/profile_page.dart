
import 'package:flutter/material.dart';
import 'package:marketplace_app/views/bottom_navbar_pages/profile_detail_page.dart';

import '../../config/constants.dart';

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
              height: 60,
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDetailPage()));
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 20),
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
              padding:  EdgeInsets.symmetric(horizontal: kdPadding),
              child: Container(height: 1,width: double.infinity,color: Colors.black12,),
            ),
            const SizedBox(height: 15,),

             const Padding(
               padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 12),
               child: Text(
                 'Parametres',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 23,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
            SizedBox(height: 10,),
            _reusablaWidget(
                (){},
              Icons.account_circle_outlined,
              'Informations personelles'
            ),
            _reusablaWidget(
                    (){},
                Icons.security_sharp,
                'Connexion et securité'
            ),
            _reusablaWidget(
                    (){},
                Icons.monetization_on_outlined,
                'Paiements et versements'
            ),
            _reusablaWidget(
                    (){},
                Icons.settings_outlined,
                'Accessibilité'
            ),

            _reusablaWidget(
                    (){},
                Icons.notifications_outlined,
                'Notifications'
            ),

            _reusablaWidget(
                    (){},
                Icons.g_translate_sharp,
                'Translation'
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
                "Fonctionnement d'xxx"
            ),

            _reusablaWidget(
                    (){},
                Icons.security_update_good,
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
            padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: kdPadding),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 25,
                ),
                const SizedBox(width: 10,),
                Text(
                  text,
                  style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
