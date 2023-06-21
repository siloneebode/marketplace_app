import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String error ;
  final Function() getData ;
  const CustomErrorWidget(
      {super.key,
        required this.getData,
        required this.error
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            error,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20,),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: const Size(double.infinity, 56),
              ),
              onPressed: getData,

              child: const Text('Réessayer',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),

        ],
      ),
    );
  }
}
