
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Components/custom_separator.dart';
import '../../config/constants.dart';
import 'list_language_page.dart';

class LanguePage extends StatefulWidget {
  const LanguePage({Key? key}) : super(key: key);

  @override
  State<LanguePage> createState() => _LanguePageState();
}

class _LanguePageState extends State<LanguePage> {


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
        padding: const EdgeInsets.all(kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),

            const Text(
              'Langue',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            const Text(
              "La langue par défaut de l'application. Les commentaires, avis, titres et messages seront en cette langue par défaut",
              style: TextStyle(height: 1.4, fontSize: 15),
            ),

            const SizedBox(
              height: 45,
            ),

            ReuseableRow('Langue','Français'),

            const SizedBox(
              height: 35,
            ),

            CustomSeparator(),

            const SizedBox(
              height: 35,
            ),

            const Text(
              'Traduction',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            const Text(
              "Traduire automatiquement les commentaires, "
                  "les messages et les titres des annonces en ta langue de base",
              style: TextStyle(height: 1.4, fontSize: 15),
            ),

            const SizedBox(
              height: 25,
            ),

            InkWell(
                child: Row(
                  children: [
                    const Text(
                      'Traduire',
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListLanguagePage()));
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
