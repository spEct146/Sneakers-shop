import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade50,
      padding: EdgeInsets.symmetric(vertical: 28),
      child: GNav(
        gap: 8,
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home, text: "Shop"),
          GButton(icon: Icons.shopping_bag_rounded, text: "Cart"),
        ],
      ),
    );
  }
}
