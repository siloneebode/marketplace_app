import 'package:flutter/material.dart';

class CustomEmptyWidget extends StatelessWidget {
   String message = "Aucune donnée pour le moment ";
   CustomEmptyWidget(this.message,{super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
      ),
    );
  }
}
