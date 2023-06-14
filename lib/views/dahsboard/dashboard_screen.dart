import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/controller/dashboard_controller.dart';
import 'package:marketplace_app/views/detail_product_page.dart';
import 'package:marketplace_app/views/payment_page.dart';
import 'package:marketplace_app/views/product/create/create_product_screen.dart';
import '../bottom_navbar_pages/home_page.dart';
import '../bottom_navbar_pages/profile_page.dart';
import '../vends_ton_article_page.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller) => Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabindex,
              children: const [
                HomePage(),
                PaymentPage(),
                CreateProductScreen(),
                VendsTonArticlePage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child:
                  Icon(Icons.home_outlined, weight: 50,  size: 30,),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Icon(Icons.search, size: 30,),
                ),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Icon(Icons.add_circle_outline, size: 30,),
                ),
                label: 'Vendre',
                tooltip: 'Vends tes affaires'
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2, ),
                  child: Icon(Icons.messenger_outline, size: 30,),
                ),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Icon(Icons.person_outline_sharp, size: 30,),
                ),
                label: 'Profil',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.tabindex,
            selectedItemColor: Colors.red,
            selectedIconTheme: const IconThemeData(
              color: Colors.red,
              size: 23,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.grey.shade400,
              size: 23,
            ),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.shade400,
            iconSize: 20,
            showUnselectedLabels: true,
            onTap: (val) {
              controller.updateIndex(val);
            },
            elevation: 7,

          ),

        ),
    );
  }
}
