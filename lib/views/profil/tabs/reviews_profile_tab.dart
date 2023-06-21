import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/constants.dart';

class ReviewsProfileTab extends StatelessWidget {
  const ReviewsProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/download.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Eduardo',
                            style: Get.theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '07:25',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Text("Vendeur très sérieux. ",
                            style: Get.theme.textTheme.bodyMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
