import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/ui/bottom_nav_controller/explore/explore_screen.dart';
import 'package:travel_app/ui/bottom_nav_controller/home/home_screen.dart';
import 'package:travel_app/ui/bottom_nav_controller/offer/offer_screen.dart';
import 'package:travel_app/ui/bottom_nav_controller/profile/profile_screen.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;
  _onItemTapped(int index) => setState(() => _selectedIndex = index);

  List _widgetOptions = [
    HomeScreen(),
    ExploreScreen(),
    OfferScreen(),
    Center(child: Text('World')),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(Dimensions.r25 + 5)),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: AppColors.whiteColor,
          unselectedItemColor: AppColors.textColor,
          selectedFontSize: 12.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.mainColor,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                color: _selectedIndex == 0 ? AppColors.mainColor : null,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/explore.png',
                color: _selectedIndex == 1 ? AppColors.mainColor : null,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/for you.png',
                color: _selectedIndex == 2 ? AppColors.mainColor : null,
              ),
              label: 'For You',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/world.png',
                color: _selectedIndex == 3 ? AppColors.mainColor : null,
              ),
              label: 'World',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/account.png',
                color: _selectedIndex == 4 ? AppColors.mainColor : null,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
