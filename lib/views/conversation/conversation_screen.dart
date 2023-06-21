import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/constants.dart';
import '../../infrastructure/assets/app_color.dart';
import '../../infrastructure/assets/app_image_assets.dart';
import '../accept_or_decline-page.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Eduardo',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<SampleItem>(
            onSelected: (SampleItem item) {

            },
            itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text('Report'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('BLock'),
              ),
            ],
            child: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          _makeAnOfferOrBuy(),

          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15) ,
                                    child: Icon(Icons.flag_outlined, color: AppColor.white, size: 28,),
                                  )
                                ],
                              )
                          ),

                          Expanded(
                              flex: 7,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text.rich(
                                      TextSpan(
                                        text: "Pour protéger votre paiement, ne "
                                            "communiquez et ne payez que sur la plateforme. "
                                            "Pour toute tentative de fraude signale imédiatement le vendeur. En savoir plus sur ",
                                        style: Get.theme.textTheme.bodyMedium?.copyWith(
                                          color: AppColor.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Comment signaler un vendeur ",
                                            style: Get.theme.textTheme.bodyMedium?.copyWith(
                                              color: AppColor.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]
                                      )
                                    )
                                  )
                                ],
                              )),

                          const Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10) ,
                                    child: Icon(Icons.close, color: AppColor.white, size: 25,),
                                  )
                                ],
                              )
                          ),
                        ],
                      )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _timeText(),
                    const SizedBox(
                      height: 10,
                    ),
                    _simpleMessage("Bonjour Pouvez-vous m'envoyer plus d'images de la babouche ?"),
                    //_simpleOtherMessage(""),
                    const SizedBox(
                      height: 18,
                    ),
                    _MultipleImagemessage()
                  ],
                ),
              ),
            ),
          ),
          // _confrirmationtext(),
          Container(
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                    BorderSide(color: Colors.grey.shade200, width: 2))),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.camera_alt_outlined, size: 30,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.grey3,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 10),
                        child: TextField(
                          style: Get.theme.textTheme.bodyMedium,
                          maxLines: null,
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: 'Message',
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _confrirmationtext() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Confirmation required',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Center(
                child: Text(
                  'I have a problem',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Text(
                'Everything is ok',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _timeText() {
    return Text(
      '16 juin. 2023',
      style: TextStyle(
          color: Colors.grey.shade900,
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _simpleMessage(text) {
    return InkWell(
      onLongPress: () {
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/download.png'),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Eduardo',
                        style: Get.theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '07:25',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(text,
                    style: Get.theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _simpleOtherMessage(text) {
    return InkWell(
      onLongPress: () {
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AppImage.brune),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Silone',
                        style: Get.theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '07:30',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(text,
                    style: Get.theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _simpleMessageSender() {
    return InkWell(
      onLongPress: () {
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: Get.size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey.shade200,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Hi Silone, do you rather speak in english? Kind regards',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _offerMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/download.png'),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Eduardo',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Develop flutter apps ui for both android and ios',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.ac_unit,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Prix de I\'offre : 143,40\$',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Center(
                            child: Text(
                              'Evaluer I\'offre',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Center(
                            child: Text(
                              'Decliner',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _transactionSuspendedMessage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey.shade200,
        ),
        SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kdPadding),
          child: Text(
            'Transaction suspendue',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kdPadding),
          child: Text(
            'Cette transaction sera examinee. L\'equipe d\'assistance te contactera bientot.',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }

  Widget _makeAnOfferOrBuy() {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 2, color: Colors.grey.shade200))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(AppImage.babouche,
                    height: 45,
                    width: 45,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Babouche hermes noire et argent',
                      style: Get.theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '6000.00 XAF',
                      style: Get.theme.textTheme.displayMedium?.copyWith(
                          color: AppColor.green,
                          fontSize: 14
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.green,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child:  Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        child: Center(
                          child: Text(
                            'Faire une offre',
                            style: Get.theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColor.black
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Acheter',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),


            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _oneImagemessage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kdPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/download.png'),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Eduardo',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '07:25',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Hi Silone, do you rather speak in english? Kind regards'
                      ' Hi Silone, do you rather speak in english? Kind regards'
                      'Hi Silone, do you rather speak in english? Kind regards',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  maxLines: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _MultipleImagemessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AppImage.brune),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Silone',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '07:25',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Text("Voici quelques images de la babouche. Elle est encore en très bonne état.",
                  style: Get.theme.textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    InkWell(
                      onTap: () {
                      },
                      child: Container(
                        height: 100,
                        width: Get.size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                                image: AssetImage(AppImage.babouche
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                      },
                      child: Container(
                        height: 100,
                        width: Get.size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                                image: AssetImage(AppImage.babouche),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
