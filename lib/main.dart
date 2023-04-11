import 'package:flutter/material.dart';
import 'package:simple_ui/screen/home.dart';
import 'package:simple_ui/screen/profile.dart';
import 'package:simple_ui/widgets/bottom_navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const List _screen = [Home(), Profile()];

  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screen.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigation(
            currentIndex: _selectedIndex, onItemTapped: onItemTapped),
      ),
    );
  }
}
