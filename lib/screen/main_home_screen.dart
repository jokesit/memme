import 'package:flutter/material.dart';
import 'package:memme/screen/my_secret_diary_screen.dart';
import 'package:memme/screen/publish_diary_screen.dart';
import 'package:memme/utilities/app_bottom_navigation_bar.dart';

class MainHomeScreen extends StatefulWidget {
  final bool isLogIn;
  const MainHomeScreen({super.key, required this.isLogIn});

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

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      PublishDiaryScreen(
        isLogIn: widget.isLogIn,
      ),
      MySecretDiaryScreen(
        isLogIn: widget.isLogIn,
      )
    ];
    return Scaffold(
      body: pages[_selectIndex],
      bottomNavigationBar: AppBottomNavigationBar(onTapChange: (int int) {
        navigateBottomBar(int);
      }),
    );
  }
}
