
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_app/widgets/buttons/generic_button.dart';

class SecondaryButton extends GenericButton {

  const SecondaryButton({
    Key? key,
    required String text,
    required VoidCallback onPressed,
  }) : super(
      key: key,
      text: text,
      onPressed: onPressed,
      color: Colors.white,
  ) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: Colors.black,
              width: 1
            )
        ),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

}