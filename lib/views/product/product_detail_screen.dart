import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marketplace_app/infrastructure/assets/app_color.dart';
import 'package:marketplace_app/infrastructure/assets/app_image_assets.dart';
import '../../config/constants.dart';
import '../bottom_navbar_pages/profile_detail_page.dart';
import '../detail_product_page.dart';

class ProductDetailScreen extends StatelessWidget {

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List list = const [
      SliderImage(),
      SliderImage(),
      SliderImage(),
      SliderImage(),
      SliderImage(),
      SliderImage(),
    ];
    final CarouselController _controller = CarouselController();
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                padding: const EdgeInsets.only(right: 10),
                onPressed: () {

                },
                icon: const Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                  size: 20,
                ))
            ,
          ]
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CarouselSlider.builder(
                        itemCount: list.length,
                        carouselController: _controller,
                        itemBuilder: (context, index, realIndex) {
                          return list[index];
                        },
                        options: CarouselOptions(
                          autoPlay: false,
                          enableInfiniteScroll: false,
                          viewportFraction: 1,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {

                          },
                          autoPlayInterval: const Duration(seconds: 3),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: const Center(
                            child: Text("1/2",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),),
                          ),
                        ),
                      ),

                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Hermes',
                              style: Get.theme.textTheme.displayMedium?.copyWith(
                                fontSize: 18
                              ),
                            ),

                            Spacer(),

                            Column(
                              children: [
                                GestureDetector(
                                  child: Icon(Icons.favorite, size: 25, color: AppColor.red,),
                                  onTap: () {},
                                ),
                                Text(
                                  '150',
                                  style: Get.theme.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          'Babouche hermes noir et argent',
                          style: Get.theme.textTheme.bodyMedium,
                        ),
                        Row(
                          children: [
                            Text(
                              '42 • ',
                              style: Get.theme.textTheme.bodyMedium,
                            ),
                            Text(
                              'Très bonne état • ',
                              style: Get.theme.textTheme.bodyMedium,
                            ),
                            Text(
                              'Hermes',
                              style: Get.theme.textTheme.bodyMedium?.copyWith(
                                color: AppColor.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '15000 FCFA',
                          style: TextStyle(
                            color: AppColor.green,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                  child: const CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(AppImage.brune,),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Silone',
                                      style: Get.theme.textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        Text(
                                          '155',
                                          style: TextStyle(
                                              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.chevron_right, size: 20,)
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        border: Border.all(
                                          color: AppColor.grey2,
                                        )),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: kdPadding, vertical: 9),
                                      child: Center(
                                        child: Text(
                                          'Message',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: kdPadding, vertical: 9),
                                      child: Center(
                                        child: Text(
                                          'Follow',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Détails',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      children: [

                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Categorie',
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          'Babouche',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                          'Très bonne état',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      children: [
                        Text(
                          'Nombre de vues',
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
                  SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
                      children: [
                        Text(
                          'Ajouté',
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          'll y a 1 jour',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Text(
                      'Porté très rarement, encore en très bonne état.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
