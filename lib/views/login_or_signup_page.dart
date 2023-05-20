import 'package:flutter/material.dart';
import '../Widgets/AppButtons/app_button.dart';
import '../Widgets/AppButtons/social_button.dart';
import '../Widgets/textfield_widget.dart';
import '../config/constants.dart';

class LoginOrSignUpPage extends StatefulWidget {
  const LoginOrSignUpPage({Key? key}) : super(key: key);

  @override
  State<LoginOrSignUpPage> createState() => _LoginOrSignUpPageState();
}

class _LoginOrSignUpPageState extends State<LoginOrSignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    'Connexion/Inscription',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  label: 'Name',
                  controller: _usernameController,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: 'Email',
                  controller: _emailController,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: 'Password',
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Nous vous appellerons ou vous enverrons un SMS pour confirmer votre numero. Des frais standards d\'envoi de messages et d\'echange de donnees\'s appliquent.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AppButton(
                  text: 'Continuer',
                  buttoncolor: Colors.red,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Text(
                      'Ou',
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                SocialButton(onTap: (){},text: 'Facebook',icon: Icons.facebook,color: Colors.blue,),
                const SizedBox(height: 15,),
                SocialButton(onTap: (){},text: 'Tiktok',icon: Icons.tiktok ,color: Colors.black,),
                const SizedBox(height: 15,),
                SocialButton(onTap: (){},text: 'email',icon: Icons.email_outlined ,color: Colors.black,),
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
                const SizedBox(
                  height: 15,
                ),
                SocialButton(onTap: (){},text: 'Apple',icon: Icons.apple,color: Colors.black,),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
