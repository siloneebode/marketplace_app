import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_app/config/constants.dart';

class TranslationPage extends StatefulWidget {
  const TranslationPage({Key? key}) : super(key: key);

  @override
  State<TranslationPage> createState() => _TranslationPage();
}

class _TranslationPage extends State<TranslationPage> {
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
              'Traduction',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
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
                        fontWeight: FontWeight.w500,
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

}
