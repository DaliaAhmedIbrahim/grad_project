import 'package:flutter/material.dart';
import 'package:grad_project/layout/home_layout.dart';
import 'package:grad_project/modules/booking_layout_screen.dart';
import 'package:grad_project/shared/components/components.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({Key? key}) : super(key: key);

  // var orderNumber = '348 200 541';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 115.0,
              ),
              Text(
                'Booking Number',
                style:TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '348 200 541',
                style:TextStyle(
                  fontSize: 40.0,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Thank you for using ',
                style:TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 30.0,
              // ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.contain,
                height: 200,
                width: 500,
              ),
              // SizedBox(
              //   height: 30.0,
              // ),
              Container(
                width: 300.0,
                child: Text(
                  'We will contact you to '
                      'confirm your booking',
                  style:TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultButton(
                    width: 170.0,
                    function: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> BookingLayoutScreen())
                      );
                    },
                    text: 'View Booking',
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  defaultButton(
                    width: 170.0,
                    function: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> HomeLayoutScreen())
                      );
                    },
                    text: 'Home page',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
