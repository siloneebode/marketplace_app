import 'package:flutter/material.dart';
import 'package:marketplace_app/widgets/buttons/generic_button.dart';

class PrimaryButton extends GenericButton {

  const PrimaryButton({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    }) : super(
    key: key,
    text: text,
    onPressed: onPressed,
    color: Colors.red
  ) ;

}
