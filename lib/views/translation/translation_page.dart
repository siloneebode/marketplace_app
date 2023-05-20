import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_app/config/constants.dart';
import '../custom_switch.dart';

class TranslationPage extends StatelessWidget {
  const TranslationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
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
        title: const Text(
          'Traduction',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),

            const Text("Traduire automatiquement les commentaires, les messages et les titres des annonces en ta langue"),

             const SizedBox(
              height: 25,
            ),

            _textToggle('Traduction'),
          CupertinoSwitch(
              activeColor: Colors.black,
              trackColor: Colors.grey,
              value: true,
              onChanged: (value) {})
          ],
        ),

      ),
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
          CustomSwitch(value: true,
            onChanged: (value) { value ; }, text: 'Traduction', )
        ],
      ),
    );
  }

}
