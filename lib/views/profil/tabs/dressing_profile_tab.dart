import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class DressingProfileTab extends StatelessWidget {
  const DressingProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/hanger-svgrepo-com.svg',
                width: 80,
                height: 80,
              ),
              Text("Ton dressing est vide :) ", style: Get.textTheme.titleMedium?.copyWith(
                fontSize: 19
              ),)

            ],
          ),
    );
  }
}
