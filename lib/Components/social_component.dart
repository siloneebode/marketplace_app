import 'package:flutter/material.dart';
import '../../Widgets/AppButtons/social_button.dart';
class SocialComponent extends StatelessWidget {
  const SocialComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(onTap: (){},text: 'Facebook',icon: Icons.facebook,color: Colors.blue,),
        const SizedBox(height: 15,),
        InkWell(
          onTap: (){},
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: Colors.grey.shade400,
                )),
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                children: [
                  Image.asset('assets/images/google.png',height: 30,width: 30,),
                  const SizedBox(width: 57,),
                  const Text(
                    'Continuer avec Google',
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 15,),
        SocialButton(onTap: (){},text: 'Apple',icon: Icons.apple,color: Colors.black,),
        const SizedBox(height: 15,),
        SocialButton(
          text: 'email',
          icon: Icons.email_outlined ,
          color: Colors.black,
          onTap: (){},
        ),
      ],
    );
  }
}