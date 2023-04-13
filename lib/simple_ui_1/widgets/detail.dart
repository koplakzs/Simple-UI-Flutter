import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';
import 'package:simple_ui/simple_ui_1/widgets/dummy_data.dart';
import 'package:simple_ui/simple_ui_1/widgets/history.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2 - 50,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 - 50,
            width: MediaQuery.of(context).size.width,
            color: MyTheme.backgroundGray,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2 - 50,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  color: MyTheme.backgroundWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(0, -10),
                        blurRadius: 15)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    child: const Text(
                      'Transaction History',
                      style: TextStyle(fontFamily: 'lato', fontSize: 14),
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                        itemCount: dummy.length,
                        itemBuilder: (context, index) {
                          return History(
                              title: dummy[index]['status'],
                              subTitle: dummy[index]['detail'],
                              price: dummy[index]['uang']);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
