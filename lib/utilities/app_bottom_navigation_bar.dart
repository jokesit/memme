import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final void Function(int) onTapChange;
  const AppBottomNavigationBar({
    super.key,
    required this.onTapChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      child: GNav(
        onTabChange: (value) => onTapChange(value),
        color: Colors.grey.shade500,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        activeColor: Colors.green,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
            gap: 10,
          ),
          GButton(
            icon: Icons.person,
            text: 'Me',
            gap: 10,
          )
        ],
      ),
    );
  }
}
