import 'package:flutter/material.dart';
import 'package:grad_project/modules/past_booking_screen.dart';
import 'package:grad_project/modules/upcoming_booking_screen.dart';
class BookingLayoutScreen extends StatefulWidget {
  const BookingLayoutScreen({Key? key}) : super(key: key);

  @override
  State<BookingLayoutScreen> createState() => _BookingLayoutScreenState();
}

class _BookingLayoutScreenState extends State<BookingLayoutScreen>
    with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Text(
          'Bookings',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.lightBlue,
          labelColor: Colors.black,
          labelStyle: TextStyle(
            fontSize: 18.0,
          ),
          tabs: [
            Tab(text: 'Upcoming Bookings',),
            Tab(text: 'Past Bookings',),
          ],
        ),
      ),

      body: TabBarView(
        controller: tabController,
        children:<Widget> [
          UpcomingBookingScreen(),
          PastBookings(),
        ],
      ),
    );
  }
}
