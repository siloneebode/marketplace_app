
import 'package:flutter/material.dart';
import '../../config/constants.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kdPadding),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Modifier',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Colors.black,
              controller: _tabController,
              unselectedLabelColor: Colors.grey.shade500,
              labelColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  text: 'Closet',
                ),
                Tab(
                  text: 'Reviews',
                ),
                Tab(
                  text: 'About',
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Closet(),
                    ReviewPage(),
                    AboutPage(),
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

class Closet extends StatefulWidget {
  const Closet({Key? key}) : super(key: key);

  @override
  State<Closet> createState() => _ClosetState();
}

class _ClosetState extends State<Closet> {
  bool istrue = false;
  bool istrue2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              children: [
                CircleAvatar(
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
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
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
          Wrap(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kdPadding),
                  child: Text(
                    'Bonjour comment vous allez? je vais bien je suis dans ce ton ajus 2lrbels yes yes je si skflsn ekenodenvrufid uiele oeoe klhfs lsehfws h',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: istrue ? null : 5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (istrue == false) {
                        istrue = true;
                      } else {
                        istrue = false;
                      }
                    });
                  },
                  child: Text(
                    istrue ?  'Afficher la suite': 'Show less',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ma profession : Ingenieur Telecom',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
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
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Languages parlees : Anglais et Francais',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
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
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Je visa : Yaounde Cameroun',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.ac_unit_sharp,
                  color: Colors.black,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: kdPadding),
                        child: Text(
                          'Bonjour comment vous allez? je vais bien je suis dans ce ton ajus 2lrbels yes yes je si skflsn ekenodenvrufid uiele oeoe klhfs lsehfws h',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: istrue2 ? null : 5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: kdPadding),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (istrue2 == false) {
                                istrue2 = true;
                              } else {
                                istrue2 = false;
                              }
                            });
                          },
                          child: Text(
                            istrue2 ?  'Afficher la suite': 'Show less',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
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
                          horizontal: kdPadding, vertical: 12),
                      child: Center(
                        child: Text(
                          'Message',
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kdPadding, vertical: 13.5),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
            child: Text(
              '20 items',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
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
                Spacer(),
                Text(
                  'Sort by',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'All',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kdPadding),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 5.4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: 20,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/download.png',
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$20.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '27',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$21.70 incl.',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.verified_outlined,
                            color: Colors.green,
                            size: 13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '21/L',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Billabong',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 70,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: kdPadding),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/images.png'),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'keyrosewater',
                                      style: TextStyle(
                                        color: Colors.green.shade800,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '3 days ago',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 17,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Incredible !! Shoes came looking even better than the pics. In love with them, Thanks so much !!',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  ),
                                )
                              ],
                            ),
                          ),
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
                        height: 20,
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}


class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images.png',
                ),fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: kdPadding),
            child: Text(
              'angeluscustos',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 25,),
          Container(height: 2,width: double.infinity,color: Colors.grey.shade200,),
          SizedBox(height: 15,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: kdPadding),
            child: Text(
              'Informations verifies :',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          _reuseableRow(
              (){},
            Icons.verified_outlined,
            'Google'
          ),
          _reuseableRow(
                  (){},
              Icons.verified_outlined,
              'E-mail'
          ),
          SizedBox(height: 10,),
          Container(height: 2,width: double.infinity,color: Colors.grey.shade200,),
          SizedBox(height: 10,),
          _reuseableRow(
                  (){},
              Icons.location_on,
              'Belbef, France'
          ),
          _reuseableRow(
                  (){},
              Icons.access_time_rounded,
              'Connectee il y a a l\'instant'
          ),
          _reuseableRow(
                  (){},
              Icons.wifi,
              '7 Abonnes 2 Abonnements'
          ),
        ],
      ),
    );
  }
  Widget _reuseableRow(void Function()? onTap,IconData? icon,String text){
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: kdPadding,vertical: 10),
        child: Row(
          children: [
            Icon(icon,size: 17,color: Colors.black,),
            SizedBox(width: 10,),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
