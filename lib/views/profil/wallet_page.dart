import 'package:flutter/material.dart';
import 'package:marketplace_app/config/constants.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {


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
        padding: const EdgeInsets.all(kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 15,
            ),

            Text(
              'Mon portemonaie',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text('0.00 XAF', style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black54
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Gain disponible pour retrait', style: TextStyle(
                color: Colors.black, fontSize: 16
            ),),
            
          ],
        ),
      ),
    );
  }
}
