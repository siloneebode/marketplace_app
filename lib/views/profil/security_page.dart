import 'package:flutter/material.dart';
import 'package:marketplace_app/config/constants.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),

      body: Container(
        padding: EdgeInsets.all(kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(
          height: 15,
        ),

        const Text(
          'connexion',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
            ReuseableRow('Nom et prénom','Dernière modification 21 mai 2023'),

        ]
        ),
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
                  height: 1.36
              ),
              ),
              Text(
                text2,style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.2
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
}
