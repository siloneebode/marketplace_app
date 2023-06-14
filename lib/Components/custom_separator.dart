import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  final double? height ;
  final double? width ;
  final double? space ;
  const CustomSeparator({Key? key,
    this.height,
    this.width,
    this.space = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height, width: width,),
      Container(
      height: space,
      width: double.infinity,
      color: Colors.grey.shade300,
    ),
      ],
    );
  }
}
