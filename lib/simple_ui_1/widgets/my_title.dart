import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          color: MyTheme.backgroundGray),
                    ))
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: 340,
                  // color: MyTheme.backgroundWhite,
                  decoration: BoxDecoration(
                      color: MyTheme.backgroundWhite,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            offset: const Offset(0, 10),
                            blurRadius: 10)
                      ]),
                  child: Column(
                    children: [
                      const Text(
                        'Balance',
                        style: TextStyle(fontFamily: 'lato', fontSize: 16),
                      ),
                      const Text(
                        'Rp 350.000.000',
                        style: TextStyle(fontFamily: 'pacifico', fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'xxxx-xxxx-xxxx-0000',
                        style: TextStyle(fontFamily: 'lato', fontSize: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '07/25',
                            style: TextStyle(fontFamily: 'lato'),
                          ),
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
