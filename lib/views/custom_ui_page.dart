import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/custom_list.dart';
import '../Components/custom_separator.dart';
import '../Components/modal/custom_modal.dart';
import '../Http/Controller/textfield_controller.dart';
import '../Widgets/AppButtons/social_button.dart';
import '../widgets/buttons/primary_button.dart';
import '../widgets/buttons/secondary_button.dart';
import '../widgets/form/custom_field.dart';

class CustomUIPage extends StatelessWidget {
  const CustomUIPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool ischecked2 = false;

    final formController = Get.put(CustomTextFieldController());
    final passwordController = Get.put(CustomTextFieldController());
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
            'UI Page',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          shrinkWrap: false,
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                // les champs de type text
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Les Champs de type de Text",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFormField(
                    label: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Email'),
                    ),
                    key: formController.formKey,
                    controller: formController.textController,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    label: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Password'),
                    ),
                    controller: passwordController.textController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    suffix: const Icon(Icons.remove_red_eye),
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),

              const SizedBox(
                height: 35,
              ),
              // les bouttons simples
              Column(
                children: [
                  const Text(
                    "Les bouttons simples",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  PrimaryButton(
                      text: 'button primaire', onPressed: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  SecondaryButton(
                      text: 'button secondaire',
                      onPressed: () {
                        Get.bottomSheet(const CustomModal(
                            size: Size(
                                double.infinity * 2, double.infinity),
                            header: "A propos de ce logement ",
                            body: Center(
                              child: Text('Salut comment tu vas ?'),
                            )));
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Lien qui ouvre une modale',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 35,
              ),

              // les bouttons social
              Column(
                children: [
                  const Text(
                    "Les bouttons social",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SocialButton(
                    onTap: () {},
                    text: 'Facebook',
                    icon: Icons.facebook,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SocialButton(
                    onTap: () {},
                    text: 'Tiktok',
                    icon: Icons.tiktok,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SocialButton(
                    onTap: () {},
                    text: 'email',
                    icon: Icons.email_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // boutton social de google comme il n'ya pas d'icone pour ca
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          )),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 27),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 57,
                            ),
                            const Text(
                              'Continuer avec Google',
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 35,
              ),

              Column(
                children: const [
                  Text(
                    "Les textes",
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('Notification, grand titre de page', style: TextStyle(
                    color: Colors.black,
                      fontSize: 29,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "Description des titres de page. Cette app sera une tuerie dans ce pays, on vous tout coloniser, tout de chez tout. On parlera de nous",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Titre de section sur la page', style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Sous titre des titres de section Cette app sera une tuerie dans ce pays, on vous tout coloniser, tout de chez tout. On parlera de nous",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40,),

              Column(
                children: const [
                  Text(
                    "Les listes réutilisables",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 5,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height: 15,),

              const Text(
                'Information et recompenses pour les vendeurs',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),

              const SizedBox(height: 5,),

              const Text(
                "Decouvrez les meilleurees pratiques pour mieux vendre sur le site",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 15,),

              CustomList(
                  title: "Nom et Prenom",
                  title2: 'Non confirmé',
                  onPressed: () {}
              ),

              const SizedBox(height: 15,),
              const CustomSeparator(),
              const SizedBox(height: 15,),
              CustomList(
                  title: "Information et conseils",
                  title2: 'Activé : Notification Push',
                  onPressed: () {}
              ),
          ],
        ),
              const SizedBox(height: 20,),
                  const CustomSeparator(),
              const SizedBox(height: 20,),
              // liste de couleur
              InkWell(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Rouge',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          ischecked2 ?
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ):
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Padding(
                              padding:  EdgeInsets.all(2),
                              child: Icon(Icons.check,color: Colors.white,size: 17,),
                            ),
                          ),

                        ],
                      ),
                    ],
                  )
                  ),
                  const SizedBox(height: 20,),
              const CustomSeparator(),
                  const SizedBox(height: 20,),
              InkWell(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Vert',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              ischecked2 ?
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ):
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding:  EdgeInsets.all(2),
                                  child: Icon(Icons.check,color: Colors.white,size: 17,),
                                ),
                              ),

                            ],
                          ),
                        ],
                      )
                  ),
                  const SizedBox(height: 20,),
                  const CustomSeparator(),
                  const SizedBox(height: 20,),

              Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Payez la totalite',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Vous pouvez payer dès maintenant et payer le reste Après',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.black,
                              width: 6,
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),
                  const CustomSeparator(),
                  const SizedBox(height: 20,),

                  InkWell(
                      child: Row(
                        children: const [
                          Text(
                            'Catégorie',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Louis vitton',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 17,
                            color: Colors.grey,
                          ),
                        ],
                      )
                  ),

                  const SizedBox(height: 20,),
                  const CustomSeparator(),
                  const SizedBox(height: 20,),

                  Column(
                    children: [
                      InkWell(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.collections,
                              size: 30,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Homme',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,size: 17,
                            )
                          ],
                        ),
                      ),

                    ],
                  )

        ])),
    ]
    ,
    )
    );
  }
}
