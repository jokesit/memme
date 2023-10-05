import 'package:flutter/material.dart';
import 'package:memme/screen/my_secret_diary_screen.dart';
import 'package:memme/screen/publish_diary_screen.dart';
import 'package:memme/utilities/app_bottom_navigation_bar.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectIndex = 0;
  void navigateBottomBar(int int) {
    setState(() {
      _selectIndex = int;
    });
  }

  final List<Widget> _pages = [
    const PublishDiaryScreen(),
    const MySecretDiaryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: AppBottomNavigationBar(onTapChange: (int int) {
        navigateBottomBar(int);
      }),
    );
  }
}
