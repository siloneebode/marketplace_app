import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_app/Components/modal/custom_modal.dart';
import 'package:marketplace_app/widgets/buttons/primary_button.dart';
import 'package:marketplace_app/widgets/buttons/secondary_button.dart';

import '../../Http/Controller/textfield_controller.dart';
import '../../Widgets/AppButtons/app_button.dart';
import '../../widgets/form/custom_field.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final moveDistance = screenHeight * 0.3;
    final formController = Get.put(CustomTextFieldController());
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
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
            'Mot de passe oublié',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Saisi ton address email pour recevoir les instructions sur la façon de réinitialiser ton mot de passe",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomTextFormField(
                            label: 'Email',
                            controller: formController.textController,
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            onChanged: () {},
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          PrimaryButton(
                              text: 'réinitialise ton mot de passe',
                              onPressed: () {}),
                          const SizedBox(
                            height: 25,
                          ),
                          SecondaryButton(
                              text: 'réinitialise ton mot de passe',
                              onPressed: () {
                                Get.bottomSheet(const CustomModal(
                                    size: Size(
                                        double.infinity * 2, double.infinity),
                                    header: "A propos de ce logement ",
                                    body: Center(
                                      child: Text('Salut comment tu vas ?'),
                                    )));
                              }),
                        ],
                      ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "Les differentes listes qu'on aura ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage(
                                'assets/images/belle_fille.jpg',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Minou',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Bonjour, puis-je avoir des photos de la semelle ?',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),)

                    ]),

              ),
            ],
          ),
        ));
  }
}
