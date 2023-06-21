import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class CardBottomSheetItem extends StatelessWidget {
  final Icon? icon ;
  final String title ;
  final Function() onTap ;
  final String? image ;
  final bool hasImage;
  const CardBottomSheetItem({
    super.key,
    this.icon,
    required this.title,
    required this.hasImage,
    this.image,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: kdPadding),
        child: Row(
          children: [
            icon!,
            hasImage == true
                ? Image.asset(image!, height: 35, width: 35)
                : const SizedBox(),
            const SizedBox(width: 15,),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
