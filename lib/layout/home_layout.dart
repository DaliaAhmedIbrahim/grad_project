import 'package:flutter/material.dart';
import 'package:grad_project/modules/booking_layout_screen.dart';
import 'package:grad_project/modules/favourites_screen.dart';
import 'package:grad_project/modules/home_screen.dart';
import 'package:grad_project/modules/profile_screen.dart';


class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    //BookingLayoutScreen(),
    FavouritesScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap:(index){
          setState(() {
            currentIndex= index;
          });
        } ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.date_range_outlined,
          //   ),
          //   label: 'Booking',
          // ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outlined,
            ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),

    );
  }
}
