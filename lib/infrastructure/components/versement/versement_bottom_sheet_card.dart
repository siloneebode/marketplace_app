import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../assets/app_color.dart';
import '../custom_bottom_sheet.dart';
import 'card_bottom_sheet_item.dart';
import 'form/credit_card_form_sheet.dart';

class VersementBottomSheetCard extends StatelessWidget {
  const VersementBottomSheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                children: [
                  CardBottomSheetItem(
                    icon: const Icon(Icons.credit_card_outlined, size: 35, color: AppColor.grey2,),
                    title: 'Carte de débit ou de crédit',
                    hasImage: false,
                    onTap: () => Get.bottomSheet(
                        const CustomBottomSheet(
                          header: 'Ajoute une carde de débit ou crédit',
                          body: CreditCardFormSheet(),
                          heightFactor: 0.9,

                        )
                    ),
                  ),
                ],
              )
          )
        ]);
  }
}
