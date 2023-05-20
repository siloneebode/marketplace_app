
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  String text;
  IconData icon;
  Color? color;
  void Function()? onTap;
  SocialButton({super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: Colors.grey.shade400,
            )),
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Icon(
                icon,
                color:color,
              ),
              const SizedBox(width: 60,),
              Text(
                'Continuer avec $text',
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
