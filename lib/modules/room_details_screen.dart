import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/modules/datetime_screen.dart';
import 'package:grad_project/shared/components/components.dart';
import 'package:time_range/time_range.dart';

class roomDetails extends StatefulWidget {
  const roomDetails({Key? key}) : super(key: key);

  @override
  State<roomDetails> createState() => _roomDetailsState();
}

class _roomDetailsState extends State<roomDetails> {

  // Initial Selected Value
  String dropdownvalue = 'EGP 20/hour';

  // List of items in our dropdown menu
  var items = [
    'EGP 20/hour',
    'EGP 70/day',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.shade200,
                  width: 2,
                  style: BorderStyle.solid
              ),
          ),

          child: Row(
            children: [
              SizedBox(
                height: 50.0,
                width: 170.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> DateTimeScreen())
                      );
                    },
                    child: Text('Set Date/Time'),
                  ),
                ),
              ),

              Spacer(),

              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                          style: BorderStyle.solid
                      ),

                      borderRadius: BorderRadius.circular(8)


                  ),
                  child: DropdownButton(
                    value: dropdownvalue,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    // Array list of items

                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Center(child: Text(items)),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                      underline: DropdownButtonHideUnderline(child: Container())
                   ),
                ),
              ),

            ],
          ),
        ),
      ),
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
            //SizedBox(height: 5.0,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children:[
                        Text(
                          "Meeting Room 1",
                          style: TextStyle(color: Colors.black87, fontSize: 19.0, fontWeight: FontWeight.bold),
                        ),

                        SizedBox( width: 3,),

                        Text(
                          "inside",
                          style: TextStyle(color: Colors.black87, fontSize: 15.0,),
                        ),

                        SizedBox( width: 3,),

                        Text(
                          "Elkhaima Workspace",
                          style: TextStyle(color: Colors.black87, fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),

                        // Spacer( ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: IconButton(
                              color: Colors.blue.shade500,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                          ),
                        ),


                      ] ,
                    ),
                  ),
                  //SizedBox(height: 0.1,),
                  Container(
                    padding: const EdgeInsets.only(left: 10.0,right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
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
                        SizedBox(
                          height: 5.0,
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
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.brunch_dining,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Icon(
                              Icons.wysiwyg,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Divider(
                          thickness: 2.0,
                        ),
                        Text("Location : ".toUpperCase(), style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0
                        ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 17.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                'Dokki/Egypt',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Divider(
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Container(
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Amentities".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
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
                                    fontSize: 15.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),


                        ],
                      ),
                    ),
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

