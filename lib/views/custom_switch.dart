

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  final String text ;
  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: const TextStyle(fontSize: 16, ),),
          const Spacer(),
          Obx(() => CupertinoSwitch(
              activeColor: Colors.black,
              trackColor: Colors.grey,
              value: value,
              onChanged: onChanged))
        ],
      ),
    );
  }
}