import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_color.dart';

import '../../Http/Controller/textfield_controller.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool autofocus ;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String) onChanged;
  final TextStyle? style ;

  const CustomTextFormField({Key? key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.suffix, required
    this.onChanged,
    this.prefix,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (focus) {
        FocusScope.of(context).unfocus();
      },
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: AppColor.grey,
      ),
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: label,
          border:  OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10)
          ),
        suffixIcon: suffix,
        prefixIcon: prefix,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10)
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
        )
      ),
      cursorColor: Colors.black,
      cursorWidth: 1,
      autofocus: autofocus,
      onChanged: onChanged,

    );
  }
}
