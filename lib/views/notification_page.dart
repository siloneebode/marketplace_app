import 'package:flutter/material.dart';

import '../Widgets/AppButtons/iphone_toggle_button.dart';
import '../config/constants.dart';
import 'bottom_navbar_pages/message_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Icon(Icons.arrow_back,color: Colors.black,size: 20,),
              const SizedBox(height: 30,),
              const Text(
                '**ù',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TabBar(
                isScrollable: true,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: Colors.black,
                controller: _tabController,
                unselectedLabelColor: Colors.grey.shade500,
                labelColor: Colors.black,

                tabs: const <Widget>[
                  Tab(
                    text: 'Offres et mises a jour',
                  ),
                  Tab(
                    text: 'Compte',
                  )
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      FirstPage(),
                      Center(
                        child: Text(
                          'There are No Comptes yet.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
          const SizedBox(height: 15,),
          const Text(
            'Information et recompenses pour les hotes',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          ),
          const SizedBox(height: 5,),
          const Text(
            'Decouvrez les meilleurees pratiques en matiere d\'accuril de voyageurs et accedez a des avantages exclusiv\'s',style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          ),
          const SizedBox(height: 15,),
          ReuseableRow('Reconnaissance et accomplissements','Active : Notifications push et apples telephoniques'),

          const SizedBox(height: 45,),
          ReuseableRow('Informations et conseils','Active : Notifications push'),
          const SizedBox(height: 45,),
          ReuseableRow('Tandences et suggestions de prix','Active : Notifications push'),
          const SizedBox(height: 45,),
          ReuseableRow('Avantages pour les hotes','Active : Notifications push'),
        ],
      ),
    );
  }
  Widget ReuseableRow(String text1, text2){
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
              ),
              ),
              Text(
                text2,style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              ),
            ],
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
                        const SizedBox(height: 10,),
                        _textToggle('Email'),
                        const SizedBox(height: 10,),
                        _textToggle('Notifications push'),
                        const SizedBox(height: 10,),
                        _textToggle('SMS'),
                        const SizedBox(height: 10,),
                        _textToggle('Appels telephoniques'),
                       const SizedBox(height: 15,),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text(
            'Modifier',style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
          ),
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

