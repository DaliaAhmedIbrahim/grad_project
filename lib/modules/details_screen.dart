import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/shared/components/components.dart';

class details_screen extends StatefulWidget {
  const details_screen({Key? key}) : super(key: key);

  @override
  State<details_screen> createState() => _details_screenState();
}

class _details_screenState extends State<details_screen> {
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
                          "Elkhaima Workspace",
                          style: TextStyle(color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),

                        Spacer( ),

                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: IconButton(
                            color: Colors.blueAccent,
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                        ),

                      ] ,
                    ),
                  ),
                  SizedBox(height: 0.1,),
                  Row(
                    children: [
                      const SizedBox(width: 13.0),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 8.0,
                      //     horizontal: 16.0,
                      //   ),
                      //   decoration: BoxDecoration(
                      //       color: Colors.grey,
                      //       borderRadius: BorderRadius.circular(20.0)),
                      //   child: Text(
                      //     "8.4/85 reviews",
                      //     style: TextStyle(color: Colors.white, fontSize: 13.0),
                      //   ),
                      // ),


                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children:[
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                            SizedBox(height:5.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Text.rich(TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(Icons.location_on, size: 16.0, color: Colors.grey,)
                                ),
                                TextSpan(
                                    text: "8 km to space"
                                )
                              ]), style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                            )
                          ],
                        ),
                      ),


                      Spacer( ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Column(
                          children: [
                            Text("20 LE", style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            ),),
                            Text("/per hour",style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey
                            ),)
                          ],
                        ),
                      )

                      // Padding(
                      //   padding: const EdgeInsets.only(right: 15.0),
                      //   child: IconButton(
                      //     color: Colors.blueAccent,
                      //     icon: Icon(Icons.favorite_border),
                      //     onPressed: () {},
                      //   ),
                      // )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Row(
                        //   children:[
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children:[
                        //           Row(
                        //             children:[
                        //               Icon(
                        //                 Icons.star,
                        //                 color: Colors.blue,
                        //               ),
                        //               Icon(
                        //                 Icons.star,
                        //                 color: Colors.blue,
                        //               ),
                        //               Icon(
                        //                 Icons.star,
                        //                 color: Colors.blue,
                        //               ),
                        //               Icon(
                        //                 Icons.star,
                        //                 color: Colors.blue,
                        //               ),
                        //               Icon(
                        //                 Icons.star_border,
                        //                 color: Colors.blue,
                        //               ),
                        //             ],
                        //           ),
                        //           Padding(
                        //             padding: const EdgeInsets.only(left: 3.0),
                        //             child: Text.rich(TextSpan(children: [
                        //               WidgetSpan(
                        //                   child: Icon(Icons.location_on, size: 16.0, color: Colors.grey,)
                        //               ),
                        //               TextSpan(
                        //                   text: "8 km to space"
                        //               )
                        //             ]), style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                        //           )
                        //         ],
                        //       ),
                        //     ),
                        //     // Column(
                        //     //   children: [
                        //     //     Text("\$ 20", style: TextStyle(
                        //     //         color: Colors.blue,
                        //     //         fontWeight: FontWeight.bold,
                        //     //         fontSize: 20.0
                        //     //     ),),
                        //     //     Text("/per hour",style: TextStyle(
                        //     //         fontSize: 14.0,
                        //     //         color: Colors.grey
                        //     //     ),)
                        //     //   ],
                        //     // )
                        //   ],
                        // ),

                        SizedBox(height: 15.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text("Book Now", style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                            ),),
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                            onPressed: () {},
                          ),
                        ),

                        SizedBox(height: 15.0),

                        Text("Description".toUpperCase(), style: TextStyle(
                            fontWeight: FontWeight.w600,
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
                          SizedBox(height: 10.0),
                          Divider(
                            thickness: 2.0,
                          ),
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


                                        Padding(
                                          padding: const EdgeInsets.only(left:40.0,top: 83.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'From EGP 20/hour',
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ],
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
                    onTap: (){},
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


                                        Padding(
                                          padding: const EdgeInsets.only(left:40.0,top: 83.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'From EGP 55/hour',
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ],
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
                    onTap: (){},
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

