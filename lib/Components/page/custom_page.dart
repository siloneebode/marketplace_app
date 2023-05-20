import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPage extends StatelessWidget {
  final String title ;
  final Widget body ;
  const CustomPage({
    Key? key,
    required this.title,
    required this.body
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        ),
      ),
      body: body,

    );
  }
}
