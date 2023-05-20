import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  const CustomSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade400,
    );
  }
}
