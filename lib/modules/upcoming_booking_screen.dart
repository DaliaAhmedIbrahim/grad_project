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
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20th',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text(
                                  'March,Wednesday',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 139.0,
                          // ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.lightBlue.withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              height: 42,
                              width: 110.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "20LE",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color:Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Room3 - IdeaSpace',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            '01:00 pm to 05:00 pm',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Maadi, Cairo',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text(
                                'View Booking',
                                style: TextStyle(
                                  fontSize:20.0,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text(
                                'Cancle Booking',
                                style: TextStyle(
                                  fontSize:20.0,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
