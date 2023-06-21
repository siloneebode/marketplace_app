import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/infrastructure/assets/app_color.dart';
import 'package:marketplace_app/views/profil/tabs/dressing_profile_tab.dart';
import 'package:marketplace_app/views/profil/tabs/forum_profile_tab.dart';
import 'package:marketplace_app/views/profil/tabs/reviews_profile_tab.dart';
import '../../Http/Controller/tabs/tab_bar_controller.dart';
import '../../config/constants.dart';
import '../../infrastructure/assets/app_image_assets.dart';
class ProfileDetailScreen extends StatelessWidget {

  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TabBarController myTabs = Get.put(TabBarController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
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
                  Icons.more_vert,
                  color: Colors.black,
                  size: 20,
                )),
          ]
      ),

      body: ListView(
        shrinkWrap: true,
        children: [
          Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(AppImage.brune,),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Silone Ebode ',
                                  style: Get.theme.textTheme.titleMedium,
                                ),
                                const Icon(Icons.verified, color: AppColor.green, size: 16, )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Text(
                                  '155',
                                  style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Bonjour, je m'appelle silone, faites un tour dans mon dressing, vous ne serez pas déçus. Mon dressing est adapté à toutes les catégories d'age",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.5,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis,
                              height: 1.4,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: InkWell(
                          onTap: () {
                          },
                          child: const Text('afficher la suite',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Yaoundé Cameroun',
                          style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(AppImage.yango,),
                            ),
                            Container(
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(AppImage.logo,),
                              ),
                              margin: EdgeInsets.only(left: 11),
                            ),
                          ],
                        ),

                        SizedBox(width: 5,),

                        Text('1.3M followers • 1.1M following ', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Row(
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
                                  horizontal: 15, vertical: 9),
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
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 9),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TabBar(
                      controller: myTabs.tabController,
                      tabs: myTabs.tabs,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.black,

                    ),
                  ),
                ],
              )),

          Expanded(
              child: SizedBox(
                height: 400,
                width: double.infinity,
                child: TabBarView(
                  controller: myTabs.tabController,
                  children: const [
                    DressingProfileTab(),
                    ReviewsProfileTab(),
                    DressingProfileTab(),

                  ],

                )
              ))
        ],
      ),



    );
  }
}


