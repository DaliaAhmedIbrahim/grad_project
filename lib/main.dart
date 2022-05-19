// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grad_project/layout/onboarding_layout_screen.dart';
import 'package:grad_project/modules/booking_layout_screen.dart';
<<<<<<< HEAD
import 'package:grad_project/modules/curr_location_screen.dart';

import 'package:grad_project/modules/datetime_screen.dart';
import 'package:grad_project/modules/details_screen.dart';
import 'package:grad_project/modules/home_page_onboarging.dart';
import 'package:grad_project/modules/login_screen.dart';
=======
import 'package:grad_project/modules/events_screen.dart';
import 'package:grad_project/modules/favourites_screen.dart';
>>>>>>> 851f02f40d03857649ce1b2c949f965fec2db2b3
import 'package:grad_project/modules/payment2_screen.dart';
import 'package:grad_project/modules/payment_choose_screen.dart';

import 'package:grad_project/modules/card_screen.dart';
import 'package:grad_project/modules/edit_personal_info_screen.dart';
import 'package:grad_project/modules/home_screen.dart';
import 'package:grad_project/modules/payment2_screen.dart';
import 'package:grad_project/modules/payment_choose_screen.dart';

import 'package:grad_project/modules/booking_confirmed_screen.dart';
import 'package:grad_project/modules/payment_confirm_screen.dart';
import 'package:grad_project/modules/payment_screen.dart';
import 'package:grad_project/modules/profile_screen.dart';
<<<<<<< HEAD
import 'package:grad_project/modules/room_details_screen.dart';
=======
import 'package:grad_project/modules/rooms_screen.dart';
>>>>>>> 851f02f40d03857649ce1b2c949f965fec2db2b3
import 'package:grad_project/modules/saved_cards_screen.dart';

import 'package:grad_project/timerange.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp
      (
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),

      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: details_screen(),

=======
      home: HomeScreen(),
>>>>>>> 851f02f40d03857649ce1b2c949f965fec2db2b3
    );
  }
}
