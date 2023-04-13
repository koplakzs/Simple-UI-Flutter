import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';

class DetailProfil extends StatelessWidget {
  const DetailProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2 - 50,
        child: Container(
          padding: EdgeInsets.only(left: 10),
          color: MyTheme.backgroundGray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'User Account',
                    style: TextStyle(fontFamily: 'lato', fontSize: 12),
                  )),
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: ListTile(
                  title: Text(
                    'ID',
                    style: TextStyle(fontFamily: 'lato', fontSize: 12),
                  ),
                  subtitle: Text('000000',
                      style: TextStyle(fontFamily: 'lato', fontSize: 16)),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Text(
                    'Account Name',
                    style: TextStyle(fontFamily: 'lato', fontSize: 12),
                  ),
                  subtitle: Text('LemperWangy',
                      style: TextStyle(fontFamily: 'lato', fontSize: 16)),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Text(
                    'Bank',
                    style: TextStyle(fontFamily: 'lato', fontSize: 12),
                  ),
                  subtitle: Text('BRI Jaya',
                      style: TextStyle(fontFamily: 'lato', fontSize: 16)),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Text(
                    'Card Number',
                    style: TextStyle(fontFamily: 'lato', fontSize: 12),
                  ),
                  subtitle: Text('00000-0000-0000-0000',
                      style: TextStyle(fontFamily: 'lato', fontSize: 16)),
                ),
              )
            ],
          ),
        ));
  }
}
