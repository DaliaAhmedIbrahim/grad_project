import 'package:flutter/material.dart';
import 'package:grad_project/modules/card_screen.dart';
import 'package:grad_project/modules/edit_personal_info_screen.dart';

class Paymentscreen extends StatefulWidget {
  const Paymentscreen({Key? key}) : super(key: key);

  @override
  State<Paymentscreen> createState() => _PaymentscreenState();
}

class _PaymentscreenState extends State<Paymentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:90,left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Your Payment Method',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            Divider(
              thickness: 2.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          'Credit Card',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> CreditCardPage())
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wallet_travel,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          'Google Wallet',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {  },
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          'Cash',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {  },
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),

                      // RaisedButton(
                      //   padding: EdgeInsets.symmetric(horizontal:100.0,vertical: 10),
                      //   color: Colors.white,
                      //   onPressed: (){},
                      //   child: Text(
                      //     'Credit Card',
                      //     style: TextStyle(
                      //       fontSize: 17,
                      //       color: Colors.black,
                      //
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
