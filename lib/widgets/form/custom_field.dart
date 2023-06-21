import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

import '../../infrastructure/assets/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final bool autofocus ;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? label;
  final String? prefixText ;
  final Function(String) onChanged;
  final TextStyle? style ;
  final List<TextInputFormatter>? inputFormatters ;

  const CustomTextFormField({Key? key,
    this.label,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.suffix, required
    this.onChanged,
    this.prefix,
    this.style,
    this.inputFormatters,
    this.prefixText,
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
          label: label,
          prefixText: prefixText,
          border:  OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10)
          ),
        suffixIcon: suffix,
        prefixIcon: prefix,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        errorText: "Veuillez saisir un numéro de téléphone valide",
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(10)
        ),
        errorStyle: Get.theme.textTheme.bodySmall?.copyWith(
          color: AppColor.red
        ),
        prefix: prefix,
        prefixStyle: const TextStyle(
          color: AppColor.grey,
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        labelStyle: const TextStyle(
          color: AppColor.grey,
        ),
      ),
      inputFormatters: inputFormatters,
      cursorColor: Colors.black,
      cursorWidth: 1,
      autofocus: autofocus,
      onChanged: onChanged,
    );
  }
}
