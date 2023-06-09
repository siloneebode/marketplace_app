import 'package:flutter/material.dart';

class CustomLinkList extends StatelessWidget {
  final String title ;
  final String subtitle ;
  final VoidCallback onTap ;
  const CustomLinkList({Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap : onTap,
          child: Expanded(
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
                  subtitle,style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                ),

                const SizedBox(width: 30,),
                const Spacer(),
                InkWell(
                  onTap: () {

                  },
                  child: const Text(
                    'Modifier',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),

        ),

      ],
    );
  }
}
