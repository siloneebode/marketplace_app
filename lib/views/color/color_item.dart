import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:marketplace_app/Http/Controller/product/color_controller.dart';

import '../../Domain/product/custom_color.dart';
import '../../config/constants.dart';

class ColorItems extends StatelessWidget {
  final CustomColor color ;
  final ColorController colorController = Get.put(ColorController()) ;
   ColorItems(this.color, {super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap:(){
            colorController.updatedColor(color);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdPadding,vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: HexColor(color.color),
                ),
                const SizedBox(
                  width: 15,
                ),
                 Text(
                  color.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
                const Spacer(),

                Obx(() {
                  if (colorController.colorListSelected.contains(color)) {
                    return Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.all(2),
                        child: Icon(Icons.check,color: Colors.white,size: 17,),
                      ),
                    );
                  } else {
                    return Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    );
                  }
                })

              ],
            ),
          ),
        ),
        Container(height: 2,width: double.infinity,color: Colors.grey.shade200,),
      ],
    );
  }
}
