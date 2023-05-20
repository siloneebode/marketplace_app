import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppButtons/app_button.dart';
import '../config/constants.dart';
import 'bottom_navbar_pages/profile_detail_page.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List list = [
    const SliderImage(),
    const SliderImage(),
    const SliderImage(),
    const SliderImage(),
    const SliderImage(),
    const SliderImage(),
  ];
  final CarouselController _carouselController = CarouselController();
  var _currentCarouselPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: list.length,
                          carouselController: _carouselController,
                          itemBuilder: (context, index, realIndex) {
                            return list[index];
                          },
                          options: CarouselOptions(
                            autoPlay: false,
                            enableInfiniteScroll: false,
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentCarouselPage = index;
                              });
                            },
                            autoPlayInterval: const Duration(seconds: 3),
                          ),
                        ),
                        // CarouselSlider(
                        //   items: [
                        //
                        //   ],
                        //   carouselController: _controller,
                        //   options: CarouselOptions(
                        //       autoPlay: false,
                        //       scrollDirection: Axis.horizontal,
                        //       enableInfiniteScroll: false,
                        //       enlargeCenterPage: true,
                        //       onScrolled: (val){
                        //         _controller.ready;
                        //       },
                        //       reverse: false,
                        //       aspectRatio: 1.5,
                        //       height: 200,
                        //       viewportFraction: 1,
                        //       onPageChanged: (index, reason) {
                        //         setState(() {
                        //           _current = index;
                        //         });
                        //       }),
                        // ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: kdPadding, vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 17,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 17,
                                child: Icon(
                                  Icons.upload,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 17,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child: Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(7)
                            ),
                            child: Center(
                              child: Text("${_currentCarouselPage + 1}/${list.length}",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                            ),
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.ac_unit,
                                color: Colors.black,
                                size: 17,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Lile d\'Oxfordshire',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1 commentaire',
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Hardwick, Angleterre, Royaume-Uni',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Brand',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '15000 FCFA',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey.shade200,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Negociable',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Acheter en decembre 2022',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Vends car ne trouve pas le temps d\'y jouer',
                        style: TextStyle(
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          Text(
                            'Categorie',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            'Consoles',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          Text(
                            'Etat',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            'Neuf sans etiquette',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          Text(
                            'Nombre de veus',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            '260',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          Text(
                            'Membres interesses',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            '8',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        children: [
                          Text(
                            'Ajoute le',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            'll y a 1 jours',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Conditions d\'annulation',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Cette reservation n\'est pas remboursable.\nConsultez les conditions d\'annulation completes de l\'hote, qui s\'appliquent meme si vous annulez pour cause de maladie ou de perturbations causees par le Covid-19',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 17,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey.shade200,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return ReviewPage();
                                    },
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blue,
                                  child: Center(
                                    child: Text(
                                      'S',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'skattabugs',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Text(
                                        '155',
                                        style: TextStyle(
                                            color: Colors.grey.shade400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: kdPadding,
                                        vertical: kdPadding),
                                    child: Center(
                                      child: Text(
                                        'Contacter',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: AppButton(
                                      text: 'Sabonner',
                                      buttoncolor: Colors.red)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey.shade200,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.ac_unit,
                                color: Colors.black,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Signaler cette annonce',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: AppButton(text: 'Buy Now', buttoncolor: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SliderFullImage(imagePath: 'assets/images.png')));
      },
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images.png',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class SliderFullImage extends StatefulWidget {
  String imagePath;

  SliderFullImage({required this.imagePath});

  @override
  State<SliderFullImage> createState() => _SliderFullImageState();
}

class _SliderFullImageState extends State<SliderFullImage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Spacer(),
            CarouselSlider(
              items: [
                Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fitWidth,
                      )),
                ),
              ],
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: false,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  aspectRatio: 1.5,
                  height: 200,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Spacer(),
            SizedBox(
              height: 55,
            ),
          ],
        ),
      ),
    );
  }
}
