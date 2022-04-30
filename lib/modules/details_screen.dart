import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class details_screen extends StatelessWidget {
  const details_screen({Key? key}) : super(key: key);

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

            SizedBox(height: 15.0,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    //padding: const EdgeInsets.symmetric(horizontal:100.0),
                    padding: const EdgeInsets.only(left: 15.0,right: 220.0),
                    child: Text(
                      "Elkhaima Workspace",
                      style: TextStyle(color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 16.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text(
                          "8.4/85 reviews",
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                      Spacer( ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: IconButton(
                          color: Colors.blueAccent,
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children:[
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
                            Column(
                              children: [
                                Text("\$ 20", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                ),),
                                Text("/per hour",style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey
                                ),)
                              ],
                            )
                          ],
                        ),

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
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
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





                        ],
                      ),
                    ),
                  ),





                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

