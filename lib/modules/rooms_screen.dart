import 'package:flutter/material.dart';
import 'package:grad_project/models/rooms_model.dart';
import 'package:grad_project/shared/components/components.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {

  List<RoomsModel> rooms = [
    RoomsModel(
      id:1,
      name:'Room 3',
      image: 'assets/images/space2.jpg',
      cost: '20LE/hour',
      rate: 3.0,
      people: '20',

    ),
    RoomsModel(
      id:2,
      name:'Room 2',
      image: 'assets/images/space1.jpg',
      cost: '40LE/hour',
      rate: 2.5,
      people: '30',

    ),
    RoomsModel(
      id:3,
      name:'Room 1',
      image: 'assets/images/space3.jpg',
      cost: '20LE/hour',
      rate: 4.0,
      people: '40',

    ),
    RoomsModel(
      id:4,
      name:'Room 4',
      image: 'assets/images/space2.jpg',
      cost: '25LE/hour',
      rate: 1.5,
      people: '15',

    ),
    RoomsModel(
      id:5,
      name:'Room 5',
      image: 'assets/images/space1.jpg',
      cost: '35LE/hour',
      rate: 3.5,
      people: '35',

    ),
    RoomsModel(
      id:6,
      name:'Room 6',
      image: 'assets/images/space3.jpg',
      cost: '45LE/hour',
      rate: 5.0,
      people: '25',

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
                itemBuilder: (context, index) => buildRoomItem(rooms[index]),
                itemCount: rooms.length,
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

  Widget buildRoomItem(RoomsModel room) =>  Container(
    width: double.infinity,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image:DecorationImage(
        image: AssetImage('${room.image}'),
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
          height: 50,
          width: double.infinity,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top:1.0, left: 10.0, right: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${room.name}",
                          style: TextStyle(
                            fontSize: 20.0,
                            color:Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "${room.people}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.people_alt_rounded,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SmoothStarRating(
                          rating: room.rate,
                          isReadOnly: true,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ),
                      Text(
                        "${room.cost}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );

}
