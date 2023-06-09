import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Http/Controller/textfield_controller.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool autofocus ;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffix;
  final Function(String) onChanged;

  const CustomTextFormField({Key? key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.suffix, required
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (focus) {
        FocusScope.of(context).unfocus();
      },
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        suffixIcon: suffix,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
        )
      ),
      cursorColor: Colors.black,
      autofocus: autofocus,
      onChanged: onChanged,

    );
  }
}
