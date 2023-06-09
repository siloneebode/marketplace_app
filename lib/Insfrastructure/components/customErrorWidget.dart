import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final Object? error ;
  const CustomErrorWidget(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error.toString(),
      ),
    );
  }
}
