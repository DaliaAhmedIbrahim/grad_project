import 'package:flutter/material.dart';
import 'package:grad_project/modules/saved_cards_screen.dart';

import '../shared/components/components.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  Object? value = 0;
  final paymentLabels =[
    'Credit card / Debit card',
    'Google Wallet',
    'Cash',

  ];

  //String? _currentpaymentLabels = 'Credit card / Debit card';

  // final paymentIcons=[
  //   Icon(Icons.credit_card),
  //   Icon(Icons.money_off),
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Center(
        //   child: Text('payment',
        //     style: TextStyle(fontSize: 25, color: Colors.blue),),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  'Choose Your Payment Method',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Radio (
                      activeColor: Colors.blue,
                      groupValue: value,
                      onChanged: (i) => setState(() => value= i ),
                      value:  index ,

                      ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),

                );
              },
              separatorBuilder: (context,index){
                return Divider();
              },
            ),

          ),

            Padding(
              padding: const EdgeInsets.only(bottom: 270.0),
              child: defaultButton(
                  text: 'pay',
                  function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SavedCardScreen()));

                  }
              ),
            ),

          ]
        ),
      ),
      );

  }
}

