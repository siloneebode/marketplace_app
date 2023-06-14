import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReductionPage extends StatelessWidget {
  const ReductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes réductions'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fonctionnalité en cours de developpement.',
              style: Theme.of(context).textTheme.headline6,
            ),

            ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text('J\'ai compris')
            )
          ],
        )
      ),

    );
  }
}
