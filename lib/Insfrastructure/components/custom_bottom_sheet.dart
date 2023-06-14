import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marketplace_app/widgets/form/custom_field.dart';

import '../../config/constants.dart';

class CustomBottomSheet extends StatelessWidget {
  final String? header ;
  final Widget? body ;
  final double? heightFactor;
   const CustomBottomSheet({super.key,
     this.header,
     this.body,
     this.heightFactor = 1});

  @override
  Widget build(BuildContext context) {

    return FractionallySizedBox(
      heightFactor: heightFactor,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
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
            title: Text(
              header!,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'silone',
              ),
            ),
            centerTitle: true,
          ),
          body: body
      ),
    );
  }
}
