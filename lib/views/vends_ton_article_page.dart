
import 'package:flutter/material.dart';
import 'package:marketplace_app/views/product_price_screen.dart';
import 'package:reorderables/reorderables.dart';


import '../Widgets/AppButtons/app_button.dart';
import '../config/constants.dart';
import 'couleur_page.dart';

class VendsTonArticlePage extends StatefulWidget {
  const VendsTonArticlePage({Key? key}) : super(key: key);

  @override
  State<VendsTonArticlePage> createState() => _VendsTonArticlePageState();
}

class _VendsTonArticlePageState extends State<VendsTonArticlePage> {
  String? _labelText;
  bool isTrue = false;
  bool isTrue2 = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  late List<Widget> _tiles;

  @override
  void initState() {
    super.initState();
    _tiles = <Widget>[
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/download.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        child: Center(
          child: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Center(
                  child: Icon(
                Icons.add,
                color: Colors.green,
                size: 20,
              )),
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    void _onReorder(int oldIndex, int newIndex) {
      setState(() {
        Widget row = _tiles.removeAt(oldIndex);
        _tiles.insert(newIndex, row);
      });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.close,
            color: Colors.black,
          ),
          title: Text(
            'Vends Ton article',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: kdPadding),
                        child: Text.rich(TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: 'Juscu a 20 photos. ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          TextSpan(
                            text: 'Voir astuces',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ])),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReorderableWrap(
                      scrollDirection: Axis.horizontal,
                        spacing: 8.0,
                        runSpacing: 4.0,
                        padding: const EdgeInsets.all(8),
                        children: _tiles,
                        onReorder: _onReorder
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add,
                              color: Colors.green,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Ajourter photos',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 13,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 2,
                                color: isTrue ? Colors.black : Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                          child: FocusScope(
                            child: Focus(
                              onFocusChange: (focus) {
                                if (isTrue == false) {
                                  setState(() {
                                    isTrue = true;
                                  });
                                } else {
                                  setState(() {
                                    isTrue = false;
                                  });
                                }
                              },
                              child: TextFormField(
                                maxLines: null,
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                textAlign: TextAlign.start,
                                onChanged: (v) {
                                  setState(() {
                                    if (v.isNotEmpty) {
                                      _labelText = _labelText;
                                    } else {
                                      _labelText = null;
                                    }
                                  });
                                },
                                textInputAction: TextInputAction.done,
                                controller: _titleController,
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Title',
                                  labelStyle: TextStyle(
                                    color: isTrue ? Colors.black : Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  border: InputBorder.none,
                                ),
                                obscureText: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 2,
                                color: isTrue2 ? Colors.black : Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                          child: FocusScope(
                            child: Focus(
                              onFocusChange: (focus) {
                                if (isTrue2 == false) {
                                  setState(() {
                                    isTrue2 = true;
                                  });
                                } else {
                                  setState(() {
                                    isTrue2 = false;
                                  });
                                }
                              },
                              child: TextFormField(
                                maxLines: null,
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                textAlign: TextAlign.start,
                                onChanged: (v) {
                                  setState(() {
                                    if (v.isNotEmpty) {
                                      _labelText = _labelText;
                                    } else {
                                      _labelText = null;
                                    }
                                  });
                                },
                                textInputAction: TextInputAction.done,
                                controller: _descriptionController,
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Decris ton article',
                                  labelStyle: TextStyle(
                                    color: isTrue2 ? Colors.black : Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: InputBorder.none,
                                ),
                                obscureText: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 13,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                    _reuseableRow(
                      () {},
                      'Categorie',
                      'Pantalons courts & chinos',
                    ),
                    _reuseableRow(() {}, 'Marque', 'Sans marque'),
                    _reuseableRow(
                      () {},
                      'Taille',
                      'S / 36 /8',
                    ),
                    _reuseableRow(
                      () {},
                      'Etat',
                      'Neuf',
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CouleurPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kdPadding, vertical: 20),
                        child: Row(
                          children: [
                            const Text(
                              'Couleurs',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.orange.shade100,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green.shade100,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 13,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                    _reuseableRow(
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPriceScreen()));
                      },
                      'Prix',
                      '',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kdPadding),
              child: AppButton(text: 'Add Product', buttoncolor: Colors.red),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget _reuseableImage() {
    return Container(
      height: 100,
      width: 130,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/download.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.close,
                size: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _reuseableRow(
    void Function()? onTap,
    String text,
    String text2,
  ) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding, vertical: 20),
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  text2,
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
            ),
          ),
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}
