import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Components/custom_separator.dart';
import 'package:marketplace_app/Domain/Language/language_model.dart';
import 'package:marketplace_app/Http/Controller/language_list_controller.dart';
import 'package:marketplace_app/config/constants.dart';

import '../../Widgets/AppButtons/app_button.dart';

class ListLanguagePage extends StatelessWidget {
  final List<Language> languages = [
    Language(name: 'Français', id: 1, active: false),
    Language(name: 'Anglais', id: 2, active: false),
    Language(name: 'Ewondo', id: 3, active: false),
    Language(name: 'Fulfulde', id: 4, active: true),
    Language(name: 'Duala', id: 5, active: false),
    Language(name: 'Yemba', id: 6, active: false),
    Language(name: 'Ghomalaʼ', id: 7, active: false),
    Language(name: 'Bafia', id: 8, active: false),
    Language(name: 'Bulu', id: 9, active: false),
    Language(name: 'Bassa', id: 10, active: false),
    Language(name: 'Bana', id: 11, active: false),
  ];
  final LanguageController controller = Get.put(LanguageController());

  ListLanguagePage({Key? key}) : super(key: key);

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
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),

        ),

        title: const Text(
          'Choisir la langue',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18
          ),
        ),
      ),

      body: GetBuilder<LanguageController>(
        builder: (context) {
          if (languages.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];
                return Column(
                    children: [
                        ListTile(
                          style: ListTileStyle.drawer,
                          title: Text(languages[index].name),
                          trailing: language.active ? const Icon(
                          Icons.check,
                          color: Colors.black,
                          weight: 1000,
                          size: 30,
                          ) : null,
                          onTap: () {
                          controller.changeLanguage(language);
                        },
                        ),
                      CustomSeparator()
                ]
                );


              });
        },
      ),

      bottomNavigationBar: BottomAppBar(
        height: 50,
        elevation: 0,
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kdPadding),
          child: AppButton(
              text: 'Enregistrer', buttoncolor: Colors.black),
        ),
      ),
    );
  }
}

