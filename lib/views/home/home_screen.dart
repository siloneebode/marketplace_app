import 'package:flutter/cupertino.dart';
import 'package:marketplace_app/Components/home_header.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children:  const [
            HomeHeader()
          ],
        ),

    );
  }
}
