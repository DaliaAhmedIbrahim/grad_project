import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingBookingScreen extends StatefulWidget {
  const UpcomingBookingScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingBookingScreen> createState() => _UpcomingBookingScreenState();
}

class _UpcomingBookingScreenState extends State<UpcomingBookingScreen> {

  String name ='Ideaspace';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '${name}',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Date: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '12/3/2022',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),


                      ],
                    ),
                    SizedBox(
                      height:5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'From : ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '12:00',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'To : ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '2:00',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Payment: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:5.0,
                    ),
                    Text(
                      'Room\'s Details: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height:5.0,
                    ),
                    Text(
                      'Room 3 for 20 persons with projector, air conditionar, white board,chairs, 2 table',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      maxLines: 3,
                    ),


                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomLeft: Radius.circular(10.0))
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
