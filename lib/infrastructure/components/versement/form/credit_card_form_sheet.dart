import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplace_app/widgets/form/custom_field.dart';

import '../../../assets/app_color.dart';
import '../../../helper/card_number_formatter.dart';

class CreditCardFormSheet extends StatelessWidget {
  const CreditCardFormSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    children: [
                      Form(
                          child: Column(
                            children: [
                              CustomTextFormField(
                                keyboardType: TextInputType.number,
                                label: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('+237'),
                                ),
                                controller: TextEditingController(),
                                onChanged: (String) {},
                                prefix: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(Icons.credit_card_outlined, color: AppColor.grey2,),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(16),
                                  CardNumberInputFormatter()
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                child: CustomTextFormField(
                                  label: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text('+237'),
                                  ),
                                  controller: TextEditingController(),
                                  prefix: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.account_circle_outlined, color: AppColor.grey2,),
                                  ),
                                  onChanged: (String ) {  },),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomTextFormField(
                                        keyboardType: TextInputType.number,
                                        label: const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Text('CVV'),
                                            ),
                                        controller: TextEditingController(),
                                        onChanged: (String) {},
                                        prefix: const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Icon(Icons.key_outlined, color: AppColor.grey2,),
                                        ),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly,
                                          LengthLimitingTextInputFormatter(3),
                                        ],
                                      ),
                                  ),
                                   const SizedBox(width: 10),
                                  Expanded(
                                    child: CustomTextFormField(
                                      keyboardType: TextInputType.number,
                                      label:const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: Text('MM/YY'),
                                        ),
                                      controller: TextEditingController(),
                                      onChanged: (String) {},
                                      prefix: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Icon(Icons.calendar_month, color: AppColor.grey2,),
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        LengthLimitingTextInputFormatter(3),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                              const SizedBox(height: 35),

                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context).colorScheme.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      fixedSize: const Size(double.infinity, 56),
                                    ),
                                    onPressed: () {
                                    },
                                    child: const Text('Ajouter la carte',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              )
                            ],
                          ))
                    ],
                  )
              )
            ]),
    );
  }
}
