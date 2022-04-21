// import 'package:flutter/material.dart';
// import 'package:grad_project/modules/card_screen.dart';
// import 'package:grad_project/modules/edit_personal_info_screen.dart';
//
// class PaymentScreen extends StatefulWidget {
//   const PaymentScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PaymentScreen> createState() => _PaymentScreenState();
// }
//
// class _PaymentScreenState extends State<PaymentScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top:90,left: 30,right: 30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Choose Your Payment Method',
//               style: TextStyle(
//                 fontSize: 25.0,
//                 color: Colors.grey[700],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Divider(
//               thickness: 2.0,
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Center(
//               child: Container(
//                 child:Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 80,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.credit_card,
//                             size: 25.0,
//                           ),
//                           SizedBox(
//                             width: 10.0,
//                           ),
//                           RaisedButton(
//                             color: Colors.white,
//                             elevation: 0,
//                             onPressed: (){},
//                             child: Text(
//                               'Credit Card',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//
//                     SizedBox(
//                       height: 80,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.wallet_travel,
//                             size: 25.0,
//                           ),
//                           SizedBox(
//                             width: 10.0,
//                           ),
//                           RaisedButton(
//                             color: Colors.white,
//                             elevation: 0,
//                             onPressed: (){},
//                             child: Text(
//                               'Credit Card',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//
//                               ),
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 80,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.money,
//                             size: 25.0,
//                           ),
//                           SizedBox(
//                             width: 10.0,
//                           ),
//
//                           RaisedButton(
//                             color: Colors.white,
//                             onPressed: (){},
//                             elevation: 0,
//                             child: Text(
//                               'Credit Card',
//                               style: TextStyle(
//                                 fontSize:20,
//                                 color: Colors.black,
//
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
