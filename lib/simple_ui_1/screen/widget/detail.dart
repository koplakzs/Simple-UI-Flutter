import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui_1/theme/my_theme.dart';
import 'package:simple_ui/simple_ui_1/widgets/dummy_data.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: MediaQuery.of(context).size.height / 2 - 50,
    //   color: MyTheme.backgroundGray,
    // );

    return SizedBox(
      height: MediaQuery.of(context).size.height / 2 - 50,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 - 50,
            width: MediaQuery.of(context).size.width,
            color: MyTheme.backgroundGray,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.all(10),
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
                children: [
                  const Text(
                    'Transaction History',
                    style: TextStyle(fontFamily: 'lato', fontSize: 15),
                  ),
                  SizedBox(
                    child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [Text('Hiiii'), Text('sojsakfnoasn')],
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

    // return Container(
    //     padding: const EdgeInsets.only(top: 10),
    //     height: MediaQuery.of(context).size.height / 2 - 50,
    //     color: MyTheme.backgroundGray,
    //     child: Center(
    //       child: Column(
    //         children: [
    //           Container(
    //             height: MediaQuery.of(context).size.height / 2 - 60,
    //             padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
    //             width: 340,
    //             decoration: BoxDecoration(
    //                 color: MyTheme.backgroundWhite,
    //                 borderRadius: const BorderRadius.only(
    //                     topLeft: Radius.circular(20),
    //                     topRight: Radius.circular(20)),
    //                 boxShadow: [
    //                   BoxShadow(
    //                       color: Colors.grey.withOpacity(0.8),
    //                       offset: const Offset(0, 10),
    //                       blurRadius: 10)
    //                 ]),
    //             child: Column(
    //               children: [
    //                 const Text(
    //                   'Transction History',
    //                   style: TextStyle(fontFamily: 'lato', fontSize: 15),
    //                 ),
    //                 Expanded(
    //                     child: ListView.builder(
    //                         itemCount: dummy.length,
    //                         itemBuilder: (context, index) {
    //                           return Row(
    //                             children: const [
    //                               ListTile(
    //                                 title: Text('Hiiiiii'),
    //                               )
    //                             ],
    //                           );
    //                         }))
    //               ],
    //             ),
    //             // child: Expanded(
    //             //   child: Column(
    //             //     crossAxisAlignment: CrossAxisAlignment.start,
    //             //     children: [
    //             //       const Text(
    //             //         'Transaction History',
    //             //         style: TextStyle(fontFamily: 'lato', fontSize: 15),
    //             //       ),
    //             //       ListView.builder(
    //             //           itemCount: dummy.length,
    //             //           itemBuilder: (context, index) {
    //             //             print(dummy);
    //             //             // final item = dummy[index];
    //             //             return Row(
    //             //               children: [
    //             //                 Expanded(
    //             //                   child: ListTile(
    //             //                     title: Text(dummy[index]['status']),
    //             //                     subtitle: Text(dummy[index]['detail']),
    //             //                   ),
    //             //                 )
    //             //               ],
    //             //             );
    //             //           }),
    //             //     ],
    //             //   ),
    //             // ),
    //           ),
    //         ],
    //       ),
    //     ));
  }
}
