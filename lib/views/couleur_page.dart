import 'package:flutter/material.dart';

import '../config/constants.dart';

class CouleurPage extends StatefulWidget {
  const CouleurPage({Key? key}) : super(key: key);

  @override
  State<CouleurPage> createState() => _CouleurPageState();
}

class _CouleurPageState extends State<CouleurPage> {

  bool ischecked = false;
  bool ischecked2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Couleur',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: Text(
                  'Suggestions',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(ischecked2 == false){
                      ischecked2 = true;
                    }else{
                      ischecked2 = false;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kdPadding,vertical: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.orange.shade100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Creme',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      ischecked2 ?
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ):
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.all(2),
                          child: Icon(Icons.check,color: Colors.white,size: 17,),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.grey.shade200,
                height: 2,
                width: double.infinity,
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: Text(
                  'Toutes les couleurs',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap:(){
                            setState(() {
                              if(ischecked == false){
                                ischecked = true;
                              }else{
                                ischecked = false;
                              }
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: kdPadding,vertical: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.orange.shade100,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Creme',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                              ischecked ?
                              Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ):
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                      color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(2),
                                  child: Icon(Icons.check,color: Colors.white,size: 17,),
                                ),
                              ),

                              ],
                            ),
                          ),
                        ),
                        Container(height: 2,width: double.infinity,color: Colors.grey.shade200,),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
