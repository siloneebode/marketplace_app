import 'package:flutter/material.dart';
import '../../Components/social_component.dart';
import '../../config/constants.dart';

class RegisterPage extends StatelessWidget {
    const RegisterPage({Key? key}) : super(key: key);

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
                const SizedBox(height: 15,),
                const Center(
                  child: Text(
                    'Rejoint nous !',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Image.asset('assets/images/belle_fille.jpg', height: 200,),
                const SocialComponent(),
                const SizedBox(height: 10,),

                Column(
                  children: const [
                    Center(child: Text('Vous avez déja un compte ? '),),
                    Center(child: Text('connectez vous',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold
                      ),)
                    )
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}


