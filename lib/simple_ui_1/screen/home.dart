import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/screen/widget/detail.dart';
import 'package:simple_ui/simple_ui_1/screen/widget/title.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.backgroundBlue,
        body: SingleChildScrollView(
          child: Column(
            children: const [MyTitle(), DetailHistory()],
          ),
        ));
  }
}
