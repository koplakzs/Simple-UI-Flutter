import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';
import 'package:simple_ui/simple_ui_1/widgets/detail_history.dart';
import 'package:simple_ui/simple_ui_1/widgets/my_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.backgroundBlue,
        body: Column(
          children: const [MyTitle(), DetailHistory()],
        ));
  }
}
