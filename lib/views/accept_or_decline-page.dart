
import 'package:flutter/material.dart';

import '../config/constants.dart';
import 'full_image_page.dart';

enum SampleItem {
  itemOne,
  itemTwo,
}

class AcceptOrDeclinePage extends StatefulWidget {
  const AcceptOrDeclinePage({Key? key}) : super(key: key);

  @override
  State<AcceptOrDeclinePage> createState() => _AcceptOrDeclinePageState();
}

class _AcceptOrDeclinePageState extends State<AcceptOrDeclinePage> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 17,
          ),
          centerTitle: true,
          title: const Text(
            'Qasim',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            PopupMenuButton<SampleItem>(
              initialValue: selectedMenu,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedMenu = item;
                });
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
                      const SizedBox(
                        height: 15,
                      ),
                      _timeText(),
                      const SizedBox(
                        height: 15,
                      ),
                      _simpleMessage(),
                      const SizedBox(
                        height: 15,
                      ),
                      _simpleMessageSender(),
                      const SizedBox(
                        height: 15,
                      ),
                      _offerMessage(),
                      const SizedBox(
                        height: 15,
                      ),
                      _transactionsuspendedMessage(),
                      const SizedBox(
                        height: 15,
                      ),
                      _oneImagemessage(),
                      const SizedBox(
                        height: 15,
                      ),
                      _MultipleImagemessage(),
                      const SizedBox(
                        height: 15,
                      )
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
                    const EdgeInsets.symmetric(horizontal: kdPadding, vertical: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.photo,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 3, bottom: 3),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            maxLines: null,
                            decoration: InputDecoration(
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                border: InputBorder.none,
                                hintText: 'Write a message',
                                hintStyle: const TextStyle(
                                  color: Colors.black,
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
      ),
    );
  }

  Widget _confrirmationtext() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kdPadding),
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
      '14 dec. 2022',
      style: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 12,
      ),
    );
  }

  Widget _simpleMessage() {
    return InkWell(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          builder: (context) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kdPadding, vertical: 10),
              child: Wrap(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.copy,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Copier',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.info_outline,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'Signaler un spam',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/download.png'),
            ),
            const SizedBox(
              width: 7,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 2),
                  borderRadius: BorderRadius.circular(7)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: const [
                    Text(
                      'Hi Silone, do you rather speak in english? Kind regards sjdha sjkdga asdkuga sjg SKGdas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      maxLines: 20,
                    ),
                  ],
                ),
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
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5), topLeft: Radius.circular(5)),
          ),
          builder: (context) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: kdPadding, vertical: 10),
              child: Wrap(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.copy,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Copier',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.info_outline,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'Signaler un spam',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
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
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
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

  Widget _transactionsuspendedMessage() {
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
              horizontal: BorderSide(width: 2, color: Colors.grey.shade200))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdPadding, vertical: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'assets/Campost_logo.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PlayStation 4',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      '\$60.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text(
                          '\$63.70 includes Buyer Protection',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.shield_moon,
                          color: Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
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
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        child: Center(
                          child: Text(
                            'Faire une offre',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Text(
                          'Acheter',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                  'Hi Silone, do you rather speak in english? Kind regards',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  maxLines: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullImagePage(
                                  imagePath: 'assets/download.png',
                                )));
                  },
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/download.png',
                            ),
                            fit: BoxFit.cover)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Material(
                        elevation: 3,
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Attachment_1683141892.jpeg',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '2.1 MB',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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

  Widget _MultipleImagemessage() {
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
                  'Hi Silone, do you rather speak in english? Kind regards',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  maxLines: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullImagePage(
                                    imagePath: 'assets/download.png')));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/download.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullImagePage(
                                    imagePath: 'assets/download.png')));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/download.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullImagePage(
                                    imagePath: 'assets/download.png')));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/download.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullImagePage(
                                    imagePath: 'assets/download.png')));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/download.png',
                                ),
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
