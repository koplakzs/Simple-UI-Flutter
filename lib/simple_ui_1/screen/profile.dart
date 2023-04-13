import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';
import 'package:simple_ui/simple_ui_1/widgets/detail_profil.dart';
import 'package:simple_ui/simple_ui_1/widgets/my_profil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.backgroundBlue,
        body: Column(
          children: const [MyProfil(), DetailProfil()],
        ));
  }
}
