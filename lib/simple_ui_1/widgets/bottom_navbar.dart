import 'package:dot_navigation_bar/dot_navigation_bar.dart';
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
    return DotNavigationBar(
      backgroundColor: MyTheme.backgroundBlue,
      selectedItemColor: MyTheme.backgroundWhite,
      unselectedItemColor: MyTheme.backgroundWhite,
      currentIndex: widget.currentIndex,
      onTap: widget.onItemTapped,
      items: [
        DotNavigationBarItem(
            icon: const CircleAvatar(
          radius: 13,
          backgroundColor: MyTheme.backgroundWhite,
          child: Icon(
            Icons.home,
            size: 20,
            color: MyTheme.backgroundBlue,
          ),
        )),
        DotNavigationBarItem(
            icon: const CircleAvatar(
          radius: 13,
          backgroundColor: MyTheme.backgroundWhite,
          child: Icon(
            Icons.person,
            size: 20,
            color: MyTheme.backgroundBlue,
          ),
        )),
      ],
      marginR: const EdgeInsets.all(0),
      borderRadius: 0,
      paddingR: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      enablePaddingAnimation: false,
      itemPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
    );
  }
}
