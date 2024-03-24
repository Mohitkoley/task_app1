import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/screens/margh/components/main_tab_child.dart';
import 'package:task1/screens/margh/components/profile_tab_child.dart';
import 'package:task1/screens/margh/components/saved_tab_child.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MarghHomeScreen extends StatefulWidget {
  const MarghHomeScreen({super.key});

  @override
  State<MarghHomeScreen> createState() => _MarghHomeScreenState();
}

class _MarghHomeScreenState extends State<MarghHomeScreen> {
  static const List<Widget> widgetList = [
    MainTabChild(),
    SavedTabChild(),
    ProfileTabChild(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(currentIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: currentIndex == 0 ? Colors.blueAccent : Colors.black),
              label: "Home"),
          BottomNavigationBarItem(
              icon:

                  // heart icons
                  Icon(
                currentIndex == 1
                    ? CupertinoIcons.heart_solid
                    : CupertinoIcons.heart,
                color: currentIndex == 1 ? Colors.blueAccent : Colors.black,
              ),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(
                  currentIndex == 2 ? Icons.person : Icons.person_outline,
                  color: currentIndex == 2 ? Colors.blueAccent : Colors.black),
              label: "Profile")
        ],
      ),
    );
  }
}
