import 'package:flutter/material.dart';
import '../../config/constants.dart';

class CategoryListItem extends StatelessWidget {

   dynamic object;
   Function() onTap;
   Widget? svg;

    CategoryListItem({
    Key? key,
     this.object,
      required this.onTap,
     this.svg,
  }) : super(key: key);


   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         InkWell(
           onTap: onTap,
           child: Padding(
             padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
             child: Row(
               children: [
                 svg??const SizedBox(),
                 const SizedBox(width: 15,),
                 Text(
                   object.name,
                   style: const TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w400,
                     fontSize: 15,
                   ),
                   overflow: TextOverflow.ellipsis,
                   maxLines: 1,
                 ),
                 const Spacer(),
                  Icon(
                   Icons.arrow_forward_ios_outlined,
                   size: 15,
                   color: Colors.grey.shade400,
                 )
               ],
             ),
           ),
         ),
         Padding(
           padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
           child: Container(height: 1,width: double.infinity,color: Colors.black12,),
         ),
       ],
     );
   }

}