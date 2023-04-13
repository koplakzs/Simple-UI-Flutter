import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';

class History extends StatelessWidget {
  final String title, subTitle, price;

  const History(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyTheme.backgroundWhite,
      child: Row(
        children: [
          Flexible(
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'lato',
                    fontSize: 25),
              ),
              subtitle: Text(
                subTitle,
                style: const TextStyle(fontFamily: 'lato', fontSize: 15),
              ),
            ),
          ),
          Text(
            price,
            style: TextStyle(
                color: title == 'Send' ? MyTheme.red : MyTheme.blue,
                fontFamily: 'lato',
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
