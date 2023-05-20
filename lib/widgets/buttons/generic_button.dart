import 'package:flutter/material.dart';

abstract class GenericButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color ;
  const GenericButton({Key? key,
    required this.text,
    required this.onPressed,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7)
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
