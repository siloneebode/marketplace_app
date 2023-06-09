import 'package:flutter/material.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({Key? key}) : super(key: key);

  @override
  State<FavorisPage> createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),

        ),

        title: Row(
          children: const [
            Text(
              'Favoris',
              style: TextStyle(color: Colors.black),
            ),
            
            Spacer(),
            
            Icon(Icons.add, color: Colors.black,)
            
          ],
        ),

      ),

      body: SingleChildScrollView(
        //padding: const EdgeInsets.all(kdPadding),
        child: InkWell(
          child: ListView.builder(
            shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
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
                          ),
                          const SizedBox(
                            width: 20,
                          ),

                          const Text(
                            'Babouches de Silone',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              );
              }

          ),
        ),
      ),
    );
  }
}
