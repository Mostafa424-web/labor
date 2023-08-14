import 'package:flutter/material.dart';
import 'package:labor_a/features/history/view/history_screen.dart';
import 'package:labor_a/features/home/view/categories.dart';
import 'package:labor_a/features/home/view/home_screen.dart';
import 'package:labor_a/core/resources/app_color.dart';
import 'package:labor_a/features/profile/view/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorManager.primary,
        unselectedItemColor: ColorManager.lightGray,
        showSelectedLabels: false,
        onTap: changeIndex,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline),label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'dashBoard'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'User'),
        ],
      ),
    );
  }

  int index = 0;
  changeIndex(currentIndex) {
    index = currentIndex;
    setState(() {});
  }
  List<Widget> screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const Categories(),
    const ProfileScreen()
  ];
}
