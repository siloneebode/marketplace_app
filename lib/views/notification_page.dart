

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with TickerProviderStateMixin{
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

        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              const Text(
                "Paramètre les évenements auquels tu souhaites recevoir des notifications. "
                    "La désactivation de certaines notifications peut altérer le bon fonctionnement de l'application.",
                softWrap: true,
                style: TextStyle(
                  height: 1.4,
                  fontSize: 15,
                  color: Colors.black54
                ),
              ),
              const Text(
                "En savoir plus",
                softWrap: true,
                style: TextStyle(
                    height: 1.4,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 35,),

                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Nouveau message',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),

                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],
                    )
                ),
                const SizedBox(height: 25,),
                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Nouveau follower',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],
                    )
                ),
                const SizedBox(height: 25,),
                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Nouvelle offre',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],


                    )
                ),
                const SizedBox(height: 25,),
                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Nouvel avis',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],
                    )
                ),
                const SizedBox(height: 25,),
                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Nouvel article en favoris',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],
                    )
                ),
                const SizedBox(height: 25,),
                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Campagne marketing',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],
                    )
                ),
                const SizedBox(height: 25,),
                InkWell(
                    child: Row(
                      children: [
                        const Text(
                          'Nouvelle commande',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoSwitch(
                            activeColor: Colors.black,
                            trackColor: Colors.grey,
                            value: true,
                            onChanged: (value) {})
                      ],
                    )
                ),
              ],
            ),
          )

            ],
          ),
        ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          const Text(
            'Notifications des vendeurs',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            height: 1.5
          ),
          ),

          const SizedBox(height: 35,),

          InkWell(
              child: Row(
                children: [
                  const Text(
                    'Nouveau message',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 10,
                  ),
                  CupertinoSwitch(
                      activeColor: Colors.black,
                      trackColor: Colors.grey,
                      value: true,
                      onChanged: (value) {})
                ],
              )
          ),
          const SizedBox(height: 20,),
          InkWell(
              child: Row(
                children: [
                  const Text(
                    'Nouveau follower',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 10,
                  ),
                  CupertinoSwitch(
                      activeColor: Colors.black,
                      trackColor: Colors.grey,
                      value: true,
                      onChanged: (value) {})
                ],
              )
          ),
          const SizedBox(height: 20,),
          InkWell(
              child: Row(
                children: [
                  const Text(
                    'Nouvelle offre',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 10,
                  ),
                  CupertinoSwitch(
                      activeColor: Colors.black,
                      trackColor: Colors.grey,
                      value: true,
                      onChanged: (value) {})
                ],
              )
          ),
          const SizedBox(height: 20,),
          InkWell(
              child: Row(
                children: [
                  const Text(
                    'Nouvel avis',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 10,
                  ),
                  CupertinoSwitch(
                      activeColor: Colors.black,
                      trackColor: Colors.grey,
                      value: true,
                      onChanged: (value) {})
                ],
              )
          ),
          const SizedBox(height: 20,),
          InkWell(
              child: Row(
                children: [
                  const Text(
                    'Nouvel article en favoris',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 10,
                  ),
                  CupertinoSwitch(
                      activeColor: Colors.black,
                      trackColor: Colors.grey,
                      value: true,
                      onChanged: (value) {})
                ],
              )
          ),

        ],
      ),
    );
  }
  Widget ReuseableRow(String text1, text2){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            text1,style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              height: 1.3
          ),
          ),
        ),
        const SizedBox(width: 30,),
        InkWell(
          onTap: () {
            showModalBottomSheet(
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
            );
          },
          child: CupertinoSwitch(
              activeColor: Colors.black,
              trackColor: Colors.grey,
              value: true,
              onChanged: (value) {})
        )
      ],
    );
  }

  Widget _textToggle(String text){
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
      child: Row(
        children: [
          Text(text,style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),),
          const Spacer(),
          //const IphoneToggleButton(),
        ],
      ),
    );
  }
}

