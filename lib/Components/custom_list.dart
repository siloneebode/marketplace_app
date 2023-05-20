import 'package:flutter/material.dart';

import '../config/constants.dart';

class CustomList extends StatelessWidget {
  final String title ;
  final String? title2 ;
  final VoidCallback onPressed ;
  const CustomList({Key? key,
    required this.title,
    this.title2,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              ),
              Text(
                title2!,style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 30,),
        InkWell(
          onTap: onPressed,
          child: const Text(
            'Modifier',style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
          ),
        )
      ],
    );
  }
}
