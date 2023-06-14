import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/constants.dart';


class VacationModeScreen extends StatelessWidget {
  const VacationModeScreen({super.key});

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
        title: const Text('Mode Vacance'),
      ),

      body: Container(
        padding: const EdgeInsets.all(kdPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Active le Mode Vacances',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'silone_bold'
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            const Text(
              "En activant le Mode Vacances, tes articles seront toujours visibles et pourront être ajoutés en favoris. "
                  "Mais ne seront pas disponible à la vente avant ton retour.",
              style: TextStyle(height: 1.4, fontSize: 17, fontFamily: 'silone', fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
              softWrap: true,

            ),

            const SizedBox(
              height: 25,
            ),

            InkWell(
                child: Row(
                  children: [
                    const Text(
                      'Mode Vacances',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'silone'
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        CupertinoSwitch(
                          activeColor: Colors.black,
                          trackColor: Colors.grey,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    )
                  ],
                )
            ),

          ],
        ),

      ),
    );
  }
}
