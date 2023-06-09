import 'package:flutter/material.dart';

import '../../config/constants.dart';

class CustomIconList extends StatelessWidget {
  final String title ;
  final String content ;
  final VoidCallback onTap ;
  final IconData icon ;
  const CustomIconList({Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
    required this.content}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: kdPadding,vertical: kdPadding),
            child: Row(
              children: [
                Icon(
                  icon ,
                  size: 25,
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 2,),
                      Text(
                        content,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_outlined,size: 17,
                )
              ],
            ),
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
            child: Container(height: 2,width: double.infinity,color: Colors.grey.shade200,),
          ),
        ],
      ),
    );
  }
}
