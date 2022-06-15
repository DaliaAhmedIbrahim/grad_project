import 'package:flutter/material.dart';
import 'package:grad_project/models/rooms_model.dart';
import 'package:grad_project/models/workspace_model.dart';
import 'package:grad_project/modules/details_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NearestWorkspacesScreen extends StatefulWidget {
  const NearestWorkspacesScreen({Key? key}) : super(key: key);

  @override
  State<NearestWorkspacesScreen> createState() => _NearestWorkspacesScreenState();
}

class _NearestWorkspacesScreenState extends State<NearestWorkspacesScreen> {



  List<WorkSpaceModel> workspaces = [
    WorkSpaceModel(
      id:1,
      name:'Ideaspace',
      image: 'assets/images/space2.jpg',
      location: 'ElNozha,Cairo',
      rate: 3.5,
      distance: '3.5 km',
    ),
    WorkSpaceModel(
      id:2,
      name:'Elkhaima',
      image: 'assets/images/space1.jpg',
      location: 'Dokki,Giza',
      rate: 3.5,
      distance: '4 km',
    ),
    WorkSpaceModel(
      id:3,
      name:'Zeus',
      image: 'assets/images/space3.jpg',
      location: 'Dokki,Giza',
      rate: 3.5,
      cost: "20LE",
      distance: '200 m',
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
                itemBuilder: (context, index) => buildRoomItem(workspaces[index]),
                itemCount: workspaces.length,
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


  Widget buildRoomItem(WorkSpaceModel workspace) =>  GestureDetector(
    child: Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image:DecorationImage(
          image: AssetImage('${workspace.image}'),
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
                            "${workspace.name}",
                            style: TextStyle(
                              fontSize: 20.0,
                              color:Colors.black,
                            ),
                          ),
                        ),
                        SmoothStarRating(
                          rating: workspace.rate,
                          isReadOnly: true,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      children: [

                        Expanded(
                          child: Text(
                            "${workspace.location}",
                            style: TextStyle(
                              fontSize: 20.0,
                              color:Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "${workspace.distance}",
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
    ),
    onTap: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> details_screen())
      );
    },
  );
}
