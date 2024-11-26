import 'package:flutter/cupertino.dart';
import 'package:formation_odc/screens/basic_screen.dart';
import 'package:formation_odc/screens/product_screen.dart';
import 'package:formation_odc/screens/profile_screen.dart';
import 'package:formation_odc/screens/textfield_validation_sreen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        // activeColor: CupertinoColors.activeGreen,
        // backgroundColor: CupertinoColors.activeOrange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home, ),
            label: "Accueil"
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.airplane),
              label: "Vols"
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
              label: "Profil"
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
           return  const TextfieldValidationSreen();
          
          case 1:
           return  const ProductScreen();
          case 2:
           return  const ProfileScreen();
          
          default:
          return   const ProductScreen();
        }
      },
    );
  }
}
