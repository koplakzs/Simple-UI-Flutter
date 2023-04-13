import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 8, child: Container()),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: MyTheme.backgroundGray),
              ))
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromARGB(255, 8, 172, 147),
              ),
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/img/MyPict.jpg'),
              ),
            ),
          )
          // SizedBox()
        ],
      ),
    );
  }
}
