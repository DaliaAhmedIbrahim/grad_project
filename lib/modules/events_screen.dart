import 'package:flutter/material.dart';
import 'package:grad_project/models/events_model.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  List<EventsModel> events = [
    EventsModel(
      id:1,
      name:'How to pass an interview for Software Engineer? '
          'Get your dream job.',
      image: 'assets/images/space2.jpg',
      date: 'WED, MAY 11 AT 6 PM UTC+02 ',
      status: 'Online',
      peopleGoing: 39,
      peopleInterested: 340,
    ),
    EventsModel(
      id:2,
      name:'Get a job with NGOs, the UN and '
          'International Organizations',
      image: 'assets/images/space1.jpg',
      date: 'TUES, MAY 10 AT 2 PM UTC+02 ',
      status: 'Offline',
      peopleGoing: 50,
      peopleInterested: 200,
    ),
    EventsModel(
      id:3,
      name:'Minders\'20 Workshops',
      image: 'assets/images/space3.jpg',
      date: 'SUN, APR 8 AT 10 AM UTC+02 ',
      status: 'Online',
      peopleGoing: 30,
      peopleInterested: 250,
    ),
    EventsModel(
      id:1,
      name:'How to pass an interview for Software Engineer? '
          'Get your dream job.',
      image: 'assets/images/space2.jpg',
      date: 'WED, MAY 11 AT 6 PM UTC+02 ',
      status: 'Online',
      peopleGoing: 39,
      peopleInterested: 340,
    ),
    EventsModel(
      id:2,
      name:'Get a job with NGOs, the UN and '
          'International Organizations',
      image: 'assets/images/space1.jpg',
      date: 'TUES, MAY 10 AT 2 PM UTC+02 ',
      status: 'Offline',
      peopleGoing: 50,
      peopleInterested: 200,
    ),
    EventsModel(
      id:3,
      name:'Minders\'20 Workshops',
      image: 'assets/images/space3.jpg',
      date: 'SUN, APR 8 AT 10 AM UTC+02 ',
      status: 'Online',
      peopleGoing: 30,
      peopleInterested: 250,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildEventItem(events[index]),
                itemCount: events.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEventItem(EventsModel event) =>  Container(
    width: double.infinity,
    height: 390,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image:DecorationImage(
        image: AssetImage('${event.image}'),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white30.withOpacity(0.8),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          height: 190,
          width: double.infinity,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top:6.0, left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${event.date}",
                    style: TextStyle(
                      fontSize: 17.0,
                      color:Colors.black,
                    ),
                  ),
                  Text(
                    "${event.name}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0,
                      color:Colors.black,
                    ),
                  ),
                  Text(
                    "${event.status}",
                    style: TextStyle(
                      fontSize: 17.0,
                      color:Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        child: Image(
                          image: AssetImage('assets/images/user.JPG'),
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                        borderRadius: BorderRadius.circular(25.0,),
                      ),
                      Text(
                        ' ${event.peopleInterested} interested - ',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        ' ${event.peopleGoing} going',
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
                      Container(
                        height: 40.0,
                        width: 289,
                        child: MaterialButton(
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                              ),
                              Text(
                                'Interested',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.lightBlue,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 50,
                        child: MaterialButton(
                          onPressed: (){},
                          child: Icon(
                            Icons.share_outlined,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
