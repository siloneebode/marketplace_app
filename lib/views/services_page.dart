import 'package:flutter/material.dart';

import '../config/constants.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title:TextField(
            autofocus: true,
            style:  const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle:  TextStyle(
                  color: Colors.grey.shade500, fontWeight: FontWeight.bold),
              hintText: 'Trouver des services'
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.grey.shade400,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  text: 'Services',
                ),
                Tab(
                  text: 'Prestataires',
                ),
              ],
            ),
          )),
      body: Container(
        color: Colors.grey.shade100,
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Historique des services',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Effacer I\'historique',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.78,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: [
                  TabbarViewScreens(),
                  TabbarViewScreen2(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class TabbarViewScreens extends StatelessWidget {
  TabbarViewScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recentTextList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(height: 3, color: Colors.grey.shade300),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kdPadding, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '${recentTextList[index]}',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.grey.shade300,
                          size: 17,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Services recemment consultes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Gerez',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 215,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 8,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                      width: 2,
                    ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images.png',
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  topRight: Radius.circular(7),
                                ),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7, right: 3),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(84)',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey.shade300,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              'Do django, flask, pyhton web development',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'De',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '75,68 \$',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Services recemment consultes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Gerez',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 215,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 12,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                      width: 2,
                    ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/download.png',
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  topRight: Radius.circular(7),
                                ),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7, right: 3),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(84)',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey.shade300,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              'Do django, flask, pyhton web development',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'De',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '75,68 \$',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  List<String> recentTextList = [
    'next.js',
    'flutter',
    'django',
    'data engeniering',
    'eloquence',
    'machine learning',
  ];
}

class TabbarViewScreen2 extends StatelessWidget {
   TabbarViewScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recentTextList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(height: 3, color: Colors.grey.shade300),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kdPadding, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '${recentTextList[index]}',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.grey.shade300,
                          size: 17,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Services recemment consultes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Gerez',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 215,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images.png',
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  topRight: Radius.circular(7),
                                ),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7, right: 3),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(84)',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey.shade300,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              'Do django, flask, pyhton web development',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'De',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '75,68 \$',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Services recemment consultes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Gerez',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 215,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/download.png',
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  topRight: Radius.circular(7),
                                ),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7, right: 3),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(84)',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey.shade300,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              'Do django, flask, pyhton web development',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'De',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '75,68 \$',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  List<String> recentTextList = [
    'Article',
    'Vendeur',
  ];
}

