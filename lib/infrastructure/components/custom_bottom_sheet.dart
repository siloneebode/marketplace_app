import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../config/constants.dart';

class CustomBottomSheet extends StatelessWidget {
  final String? header ;
  final Widget? body ;
  final double? heightFactor;
  final Widget? bottom ;
   const CustomBottomSheet({
     super.key,
     this.header,
     this.body,
     this.heightFactor = 1,
     this.bottom,

   });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            )
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: kdPadding),
              child: Icon(Icons.close,
                color: Colors.black, size: 22,
                weight: 900,
              ),
            )
        ),
        title: Text(
          header!,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'silone',
          ),
          overflow: TextOverflow.clip,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: body,
      ),

    );
  }
}
