
import 'package:flutter/material.dart';

import '../../config/constants.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Messages',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TabBar(
              isScrollable: true,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Colors.black,
              controller: _tabController,
              unselectedLabelColor: Colors.grey.shade500,
              labelColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  text: 'Messages',
                ),
                Tab(
                  text: 'Notifications',
                )
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    TabBarViewScreens(),
                    const Center(
                      child: Text(
                        "Tu n'as pas encore de notification",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
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
}

class TabBarViewScreens extends StatelessWidget {
  TabBarViewScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: recentTextList.length,
          itemBuilder: (BuildContext context, int index) {
            return
              Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Column(
                children: [
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/images/belle_fille.jpg',
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Minou',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Bonjour, puis-je avoir des photos de la semelle ?',
                              overflow: TextOverflow.ellipsis,maxLines: 2,

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                ],
              ),

            );
          },
      ),

    );
  }

  List<String> recentTextList = [
    'next.js',
    'reacts',
  ];
}
