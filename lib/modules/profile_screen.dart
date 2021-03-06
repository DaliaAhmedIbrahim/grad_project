import 'package:flutter/material.dart';
import 'package:grad_project/modules/booking_layout_screen.dart';
import 'package:grad_project/modules/edit_password_screen.dart';
import 'package:grad_project/modules/edit_personal_info_screen.dart';
import 'package:grad_project/modules/payment_choose_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        'assets/images/user.JPG',
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dalia Ahmed',
                          style:TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          'dalia.ahmeed.ibrahim@gmail.com',
                          style:TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    )
                  ],
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
              Text(
                'Account Settings',
                style: TextStyle(
                  fontSize:17.0 ,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Personal Information',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> EditPersonalInfo())
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.password_outlined,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Edit Password',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> EditPasswordScreen())
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.payment_outlined,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Payments',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> PaymentScreen())
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.date_range_outlined,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Bookings',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> BookingLayoutScreen())
                            );
                          },
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
                            'Currency',
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
                          Icons.approval,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Become a Host',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () => launch('https://docs.google.com/forms/d/e/1FAIpQLSeQUZhEutyikKyF-dWW6_6ksGqIFboJ22DHqyRBTeSo-PtEig/viewform?usp=sf_link'),
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),

                  ],
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
              Text(
                'Support',
                style: TextStyle(
                  fontSize:17.0 ,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child:Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help_outline,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Help',
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
                          Icons.feedback_outlined,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Feedbacks',
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
                          Icons.text_snippet_outlined,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Terms of service',
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

                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 2.0,
              ),
              Container(
                child:Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {  },
                          icon: Icon(Icons.logout_outlined),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
