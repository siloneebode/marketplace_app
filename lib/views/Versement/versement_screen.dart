import 'package:flutter/material.dart';
import 'package:marketplace_app/Components/custom_separator.dart';

class VersementModePage extends StatelessWidget {
  const VersementModePage({super.key});

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
      ),

      body: Container(
        padding: const EdgeInsets.all(18),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),

            Text(
              'Ton mode de versement',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'silone_bold',
                height: 1.25
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              "Ajoute au moins un mode de versement pour nous indiquer ou envoyer ton argent. ",
              style: TextStyle(
                  height: 1.4,
                  fontSize: 16,
                  fontFamily: 'silone'),
            ),

            SizedBox(height: 25,),
            
            Row(
              children: [
                Image.asset("assets/images/Orange.jpg" , width: 60, height: 60,),
                SizedBox(width: 10,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Orange  69*****28',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'silone'
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 3,

                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        child: Text(
                          'PAR DEFAUT',
                          style: TextStyle(
                            fontSize: 9,
                            fontFamily: 'silone',
                            fontWeight: FontWeight.w600
                          ),
                        )
                    )
                  ],
                ),

                Spacer(),

                InkWell(
                  onTap: () {},
                  child: Text(
                    'Modifier' ,style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      fontFamily: 'silone'
                  ),
                  ),
                )


              ],
            ),

            SizedBox(height: 15,),
            const CustomSeparator(),
            SizedBox(height: 15,),
            Row(
              children: [
                Image.asset("assets/images/mobile-money.jpg" , width: 60, height: 60,),
                SizedBox(width: 10,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Momo  67*****14',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'silone'
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 3,

                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        child: Text(
                          'SECONDAIRE',
                          style: TextStyle(
                              fontSize: 9,
                              fontFamily: 'silone',
                              fontWeight: FontWeight.w600
                          ),
                        )
                    )
                  ],
                ),

                const Spacer(),

                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Modifier' ,style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      fontFamily: 'silone'
                  ),
                  ),
                )

              ],
            ),
            SizedBox(height: 15,),
            const CustomSeparator(),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  fixedSize: const Size(double.infinity, 55),
                ),
                onPressed: () {},
                child: const Text('Ajoute un mode de versement',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )

            )
            
          ],
        ),

      ),
    );
  }

}

