import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation(
      {Key? key, required this.currentIndex, required this.onItemTapped})
      : super(key: key);

  final int currentIndex;
  final void Function(int) onItemTapped;
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: MyTheme.backgroundBlue,
      fixedColor: MyTheme.backgroundWhite,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 25,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              size: 25,
            ),
            label: 'Profile'),
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onItemTapped,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedLabelStyle: const TextStyle(fontSize: 14),
    );
  }
}
