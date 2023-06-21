
import 'package:flutter/material.dart';

import '../../Widgets/AppButtons/app_button.dart';
import '../../config/constants.dart';
import '../services_page.dart';
import 'filters_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isTrue = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  const EdgeInsets.only(left: kdPadding,right: kdPadding,bottom: 17),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 2,
                        color:Colors.black
                    )
                ),
                child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesPage()));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.search,color: Colors.black,),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Destination',style: TextStyle(
                                  color: Colors.black,fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                                ),
                                Text(
                                  'N\'importe ou - Une semaine',style: TextStyle(
                                  color: Colors.black,
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const FiltersPage()));
                        },
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade500,
                            ),
                            shape: BoxShape.circle
                          ),
                          child: const Center(child: Icon(Icons.filter_alt,color: Colors.black,size: 17,)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.765,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/download.png',
                              ),fit: BoxFit.cover,
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 10,),
                              child: Text(
                                'Modifications des regles du catalogue',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 10,),
                              child: Text(
                                'Nous t\'invitons a prendre connaissance des regles du cataglogue mises a jour avant le 29 decembre2022.',style: TextStyle(
                                color: Colors.white,
                              ),
                              ),
                            ),
                            const SizedBox(height: 12,),
                            AppButton(text: 'Voir les modifications', buttoncolor: Colors.grey)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Favoris',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          ),
                          Text(
                            'Show all',style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding:  const EdgeInsets.only(left: kdPadding),
                      child: SizedBox(
                        height: 263,
                        width: double.infinity,
                        child:  ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            separatorBuilder: (BuildContext context, int index) =>
                                const SizedBox(width: 10,),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 140,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/download.png',
                                          ),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 160),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        color: Colors.grey.shade400,
                                        child: const Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                                          child: Text(
                                            'Best Scene',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  const Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          '10.00 \$',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                        ),
                                        SizedBox(width: 3,),
                                        Icon(
                                          Icons.assignment_late_rounded,size: 17,
                                        ),
                                        SizedBox(width: 40,),
                                        Icon(Icons.favorite,size: 17,color: Colors.red,),
                                        SizedBox(width: 2,),
                                        Text(
                                          '2',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      'Quechua\n\$',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                    ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Creer un site Web',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          ),
                          Text(
                            'Tout afficher',style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding:  const EdgeInsets.only(left: kdPadding),
                      child: SizedBox(
                        height: 203,
                        width: double.infinity,
                        child:  ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            separatorBuilder: (BuildContext context, int index) =>
                                const SizedBox(width: 10,),
                            itemBuilder: (BuildContext context, int index) {
                              return Card(elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 140,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images.png',
                                            ),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding:  const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                                        child: const Text(
                                          'SEO adwgd awkga dakwdg asd asbda ',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: kdPadding),
                      child: Text(
                        'Recommended for you',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
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
                                  decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images.png',
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: const [
                                    Text(
                                      '\$20.00',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.favorite_border,color: Colors.grey,size: 15,),
                                    SizedBox(width: 3,),
                                    Text(
                                      '27',style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4,),
                                Row(
                                  children: const [
                                    Text(
                                      '\$21.70 incl.',style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 12,
                                    ),
                                    ),
                                    SizedBox(width: 10,),
                                    Icon(Icons.verified_outlined,color: Colors.green,size: 13,),
                                  ],
                                ),
                                const SizedBox(height: 6,),
                                const Text(
                                  '21/L',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                ),
                                const SizedBox(height: 2,),
                                const Text(
                                  'Billabong',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                ),
                              ],
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 25,
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
