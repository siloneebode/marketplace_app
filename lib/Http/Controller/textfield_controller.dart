
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomTextFieldController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  final focusNode = FocusNode();

  void unfocus() {
    if (focusNode.hasFocus) {
      focusNode.unfocus();
    }
  }
}