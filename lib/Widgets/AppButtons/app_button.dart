import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String text;
  Color buttoncolor;
  AppButton({
    required this.text,
    required this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: buttoncolor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
