import 'package:e_commerce/modules/bottom_navigation_screens/account_screen.dart';
import 'package:e_commerce/modules/bottom_navigation_screens/cart_screen.dart';
import 'package:e_commerce/modules/bottom_navigation_screens/explore_screen.dart';
import 'package:e_commerce/modules/bottom_navigation_screens/home_screen.dart';
import 'package:e_commerce/modules/bottom_navigation_screens/offer_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const OfferScreen(),
    const AccountScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 0.0,
        backgroundColor: Colors.white,
        // showUnselectedLabels: false,
        // showSelectedLabels: false,
        selectedItemColor: const Color(0xFF40BFFF),
        unselectedItemColor: const Color(0xff9098B1),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Home', icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              label: 'Explore', icon: Icon(Icons.search_outlined)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.shopping_cart_outlined)),
          BottomNavigationBarItem(
              label: 'Offer', icon: Icon(Icons.local_offer_outlined)),
          BottomNavigationBarItem(
              label: 'Account', icon: Icon(Icons.person_2_outlined)),
        ],
      ),
    );
  }
}
