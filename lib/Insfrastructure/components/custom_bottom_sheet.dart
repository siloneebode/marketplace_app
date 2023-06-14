import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marketplace_app/widgets/form/custom_field.dart';

import '../../config/constants.dart';

class CustomBottomSheet extends StatelessWidget {
  final String? title ;
   CustomBottomSheet({super.key, this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        //resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () => Get.back(),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: Icon(Icons.close,
                  color: Colors.black87, size: 20,
                  weight: 900,
                ),
              )
          ),
          title: const Text('Nom et prénom',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'silone',
            ),
          ),
          centerTitle: true,
        ),
        body:  Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text(
                'Il s\'agit du nom figurant sur tes documents officiels. Exemple ta carte d\'identité ou sur ton passport.',
                style: TextStyle(
                    fontFamily: 'silone',
                    height: 1.4,
                    fontSize: 16

                ),
              ),
              const SizedBox(height: 40,),
              CustomTextFormField(
                label: 'Nom',
                controller: TextEditingController(),
                onChanged: (String) {  },
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(
                label: 'Prénom',
                controller: TextEditingController(),
                onChanged: (String) {  },
              ),

              const SizedBox(height: 30,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fixedSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: const Text('Enregister',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'silone',
                    ),
                  )
              ),],
          ),
        )
    );
  }
}
