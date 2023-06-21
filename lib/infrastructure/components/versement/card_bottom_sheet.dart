import 'package:flutter/material.dart';

import '../../../config/constants.dart';
import '../../assets/app_color.dart';
import '../../assets/app_image_assets.dart';

class CardBottomSheet extends StatelessWidget {
  const CardBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {

                    },
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: kdPadding),
                      child: Row(
                        children: [
                          const Icon(Icons.wallet_outlined, color: AppColor.grey2, size: 35,),
                          const SizedBox(width: 15,),
                          Text(
                            'Carte de crédit ou débit',
                            style: Theme.of(context).textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Container(height: 1,width: double.infinity,color: Colors.black12,),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: kdPadding),
                      child: Row(
                        children: [
                          Image.asset(AppImage.mtn, width: 35, height: 35,),
                          const SizedBox(width: 15,),
                          Text(
                            'Momo',
                            style: Theme.of(context).textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: kdPadding),
                    child: Container(height: 1,width: double.infinity,color: Colors.black12,),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: kdPadding),
                      child: Row(
                        children: [
                          Image.asset(AppImage.orange, width: 35, height: 35,),
                          const SizedBox(width: 15,),
                          Text(
                            'Orange money',
                            style: Theme.of(context).textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          )
        ]);
  }
}
