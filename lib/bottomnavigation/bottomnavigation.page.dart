import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatefulWidget {


  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  GNav(
        backgroundColor: Colors.teal,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.white24,
        gap: 8,
        padding: EdgeInsets.all(19),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
        selectedIndex: selectedIndex, // Add a variable to track the selected index
        onTabChange: (index) {
          // Update the selected index when the tab changes
          setState(() {
            selectedIndex = index;
          });

          // Navigate to the corresponding page
          switch (index) {
            case 0:
            // Home page
              Navigator.pushNamed(context, "/home");
              break;
            case 1:
            // Likes page
              Navigator.pushNamed(context, "/etude");
              break;
            case 2:
            // Search page
              Navigator.pushNamed(context, "/search");
              break;
            case 3:
            // Settings page
              Navigator.pushNamed(context, "/settings");
              break;
          }
        },
      );
  }
}
