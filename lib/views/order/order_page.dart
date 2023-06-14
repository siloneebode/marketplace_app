import 'package:flutter/material.dart';
import 'package:marketplace_app/domain/Filters/order_filter_model.dart';

import '../../Components/custom_separator.dart';
import '../../domain/Order/order_model.dart';
import '../../config/constants.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  @override
  Widget build(BuildContext context) {

    List<Order> orders = [
      Order(
        title: 'Babouche hermes noir taille 22',
        subtitle: 'Le vendeur doit déposer l\'article',
        status: 'suspendu',
        image: 'assets/images/babouche.jpg',
        price: '2500 xaf',
      ),
      Order(
        title: 'Sac à dos rose',
        subtitle: 'Sous-titre de la commande 2',
        status: 'En cours',
        image: 'assets/images/sac.jpg',
        price: '4500 xaf',
      ),
      Order(
        title: 'greffe taille 32 avec fente sur le coté',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'Terminée',
        image: 'assets/images/modele.jpg',
        price: '3600 xaf',
      ),
      Order(
        title: 'greffe taille 32 avec fente sur le coté',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'Terminée',
        image: 'assets/images/babouche.jpg',
        price: '3600 xaf',
      ),
      Order(
        title: 'greffe taille 32 avec fente sur le coté',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'Terminée',
        image: 'assets/images/sac.jpg',
        price: '3600 xaf',
      ),
      Order(
        title: 'juppe verte ',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'En attente',
        image: 'assets/images/juppef.jpg',
        price: '3600 xaf',
      ),
      Order(
        title: 'greffe taille 32 avec fente sur le coté',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'Terminée',
        image: 'assets/images/babouche.jpg',
        price: '3600 xaf',
      ),
      Order(
        title: 'juppe verte ',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'En cours',
        image: 'assets/images/juppef.jpg',
        price: '3600 xaf',
      ),
      Order(
        title: 'greffe taille 32 avec fente sur le coté',
        subtitle: 'le client a déja confirmé la reception de l\'article',
        status: 'Terminée',
        image: 'assets/images/sac.jpg',
        price: '3600 xaf',
      ),
    ];
    List<OrderFilter> filters = [
      OrderFilter(
        title: 'Babouche hermes noir taille 22',
        subtitle: 'Le vendeur doit déposer l\'article',
        selected: 'suspendu',
      ),
      OrderFilter(
        title: 'Babouche hermes noir taille 22',
        subtitle: 'Le vendeur doit déposer l\'article',
        selected: 'suspendu',
      ),
      OrderFilter(
        title: 'Babouche hermes noir taille 22',
        subtitle: 'Le vendeur doit déposer l\'article',
        selected: 'suspendu',
      ),
      OrderFilter(
        title: 'Babouche hermes noir taille 22',
        subtitle: 'Le vendeur doit déposer l\'article',
        selected: 'suspendu',
      ),
      OrderFilter(
        title: 'Babouche hermes noir taille 22',
        subtitle: 'Le vendeur doit déposer l\'article',
        selected: 'suspendu',
      ),
    ];


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
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
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)
                    ),
                  ),
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.95,
                        child: Column (
                          children: [
                            AppBar(
                              backgroundColor: Colors.white,
                              elevation: 1,
                              centerTitle: true,
                              title: const Text(
                                'Filtres',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              leading: IconButton(
                                icon: const Icon(Icons.close, color: Colors.black),
                                onPressed: () { Navigator.pop(context);}
                              ),
                            ),
                            const SizedBox(height: 15,),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  const Text(
                                    'Langue',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 30,
                                  ),

                                  ListTile(
                                    style: ListTileStyle.drawer,
                                    title: Text('ventes'),
                                    trailing: null,
                                    onTap: () {
                                    },
                                  ),

                                  ListTile(
                                    style: ListTileStyle.drawer,
                                    title: Text('achats'),
                                    trailing: null,
                                    onTap: () {
                                    },
                                  ),

                                  const SizedBox(
                                    height: 35,
                                  ),

                                  const CustomSeparator(),

                                  const SizedBox(
                                    height: 35,
                                  ),

                                  const Text(
                                    'Traduction',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 25,
                                  ),

                                  InkWell(
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Traduire',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16
                                            ),
                                          ),
                                          Spacer(),
                                          SizedBox(
                                            width: 10,
                                          ),

                                        ],
                                      )
                                  ),

                                ],
                              ),

                            ),
                            const SizedBox(height: 15,),


                          ],

                        )
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.filter_alt_rounded, color: Colors.black))
          ,
        ],

        title: const Text(
          'Mes achats et ventes',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18
          ),
        ),
      ),

      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(orders[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orders[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 2),
                    Text(
                      orders[index].subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey.shade600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 3),
                    Text(
                      '17 mai 2023',
                      style: TextStyle(
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey.shade600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          orders[index].price,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _getStatusColor(orders[index].status),
                            ),
                            child: Text(
                              orders[index].status,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                        )
                      ],
                    ),
                  ],
                  )
                ),

                ]),


          ),
              Divider(
                color: Colors.grey[300],
                thickness: 1,
                height: 0,
              ),
            ]
          ) ;
        },
      )

    );

  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Terminée':
        return Colors.green;
      case 'En cours':
        return Colors.blue;
      case 'En attente':
        return Colors.grey;
      case 'suspendu':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }


}


Widget ReuseableRow(String text1, text2){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                height: 1.36
            ),
            ),
            Text(
              text2,style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                height: 1.2
            ),
            ),
          ],
        ),
      ),
      const SizedBox(width: 30,),
      InkWell(
        onTap: () {
        },
        child: const Text(
          'Modifier',style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
        ),
      )
    ],
  );
}



