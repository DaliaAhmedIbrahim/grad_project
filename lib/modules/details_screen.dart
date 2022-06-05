import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/modules/rooms_screen.dart';
import 'package:grad_project/shared/components/components.dart';


class details_screen extends StatefulWidget {
  const details_screen({Key? key}) : super(key: key);

  @override
  State<details_screen> createState() => _details_screenState();
}

class _details_screenState extends State<details_screen> {

  final itemKey = GlobalKey();

  Future scrollToItem() async {
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
                foregroundDecoration: BoxDecoration(
                    color: Colors.black26
                ),
                height: 250,
                child: Carousel(
                    autoplay: false,
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotBgColor: Colors.grey.withOpacity(0.1),
                    images: [
                      AssetImage('assets/images/space2.jpg'),
                      AssetImage('assets/images/space3.jpg'),
                      AssetImage('assets/images/space1.jpg'),
                      AssetImage('assets/images/space2.jpg'),
                      AssetImage('assets/images/space3.jpg'),
                      AssetImage('assets/images/space1.jpg'),
                    ]
                )
            ),
            SizedBox(height: 5.0,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children:[
                        Text(
                          "Elkhaima CO-Working Space",
                          style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,top:5.0),
                          child: SizedBox(
                            height: 40.0,
                            width: 120.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              //onPressed: (){},
                              onPressed: () => scrollToItem(),
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context)=> DateTimeScreen())
                              //);

                              child: Text(
                                'Book Now ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ] ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sun - Sat',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Text(
                                '11:30am - 11:00pm ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children:[
                            Icon(
                              Icons.wifi,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.work,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.menu_outlined,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.business,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.airport_shuttle_sharp,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.print,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.approval,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.power_rounded,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.clean_hands,
                              color: Colors.grey,
                              size: 18.0,
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Description".toUpperCase(), style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0
                        ),
                        ),
                        SizedBox(height: 10.0),

                        Text(
                          "El-Khima is a homely, vintage and cultural art space, A relaxed atmosphere where you enjoy music and drinks, El-KHIMA is your second comfortable home ", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0
                        ),
                        ),

                        SizedBox(height: 10.0),

                        Divider(
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                    child: Container(
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Amentities".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Free high speed Wifi',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Writing board, marker and Sticky notes are provided',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.contact_page_outlined,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Project available for content sharing',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Free high speed Wifi',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Writing board, marker and Sticky notes are provided',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.contact_page_outlined,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Project available for content sharing',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Free high speed Wifi',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Writing board, marker and Sticky notes are provided',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.contact_page_outlined,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Project available for content sharing',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.airport_shuttle_sharp,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Close to metro / bus station',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Divider(
                            thickness: 2.0,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '2 Spaces to choose from:',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height:6.0),
                          Text(
                            'Click on one of the options below to see the full details and Start booking!',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    key: itemKey,
                    children: [
                      InkWell(
                        child: Container(
                          height: 190,
                          width: 390,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Image(
                                            image: AssetImage('assets/images/space3.jpg'),
                                            fit: BoxFit.cover,
                                            height: 160,
                                          ),
                                        ),
                                        //borderRadius: BorderRadius.circular(10.0,),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Shared Area',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children:[
                                                Icon(
                                                  Icons.wifi,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.work,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.menu_outlined,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.business,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.airport_shuttle_sharp,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),

                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.people_alt_outlined,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Up to 30 people',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.grey[700],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height:70.0,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                'From EGP 55/hour',
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          decoration: BoxDecoration(
                            //color: Colors.grey[200],
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(10.0),

                            // ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> RoomsScreen())
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        child: Container(

                          height: 190,
                          width: 390,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Image(
                                            image: AssetImage('assets/images/space1.jpg'),
                                            fit: BoxFit.cover,
                                            height: 160,
                                          ),
                                        ),
                                        //borderRadius: BorderRadius.circular(10.0,),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Private meeting room',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children:[
                                                Icon(
                                                  Icons.wifi,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.work,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.menu_outlined,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.business,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                                Icon(
                                                  Icons.airport_shuttle_sharp,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),

                                                SizedBox(
                                                  width: 1.0,
                                                ),
                                              ],
                                            ),

                                            SizedBox(
                                              height: 5.0,
                                            ),

                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.people_alt_outlined,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Up to 5 people',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.grey[700],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height:70.0,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                'From EGP 55/hour',
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            //color: Colors.grey[200],
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(10.0),

                            // ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> RoomsScreen())
                          );
                        },
                      ),
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