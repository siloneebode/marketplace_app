import 'package:flutter/material.dart';

import '../config/constants.dart';


class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  bool obscureText = false;
  String label;
  TextInputType? keyboardType;

  CustomTextField({
    required this.controller,
    required this.obscureText,
    required this.label,
    required this.keyboardType,
  });
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? _labelText;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2,
          color: isTrue?Colors.black:Colors.grey
        )
      ),
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
        child: FocusScope(
          
          child: Focus(
            onFocusChange: (focus) {
              if(isTrue == false) {
                setState(() {
                  isTrue = true;
                });
              }else{
                setState(() {
                  isTrue = false;
                });
              }
            },
            child: TextFormField(
              keyboardType: widget.keyboardType,
              autofocus: false,
              textAlign: TextAlign.start,
                       onChanged: (v){
                         setState(() {
                           if(v.isNotEmpty){
                             _labelText = widget.label;
                           }
                           else{
                             _labelText = null;
                           }
                         });

                       },
              textInputAction: TextInputAction.done,
              controller: widget.controller,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: TextStyle(
                    color: isTrue ? Colors.black:Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,

              ),
              obscureText: widget.obscureText,
            ),
          ),
        ),
      ),
    );
  }
}

