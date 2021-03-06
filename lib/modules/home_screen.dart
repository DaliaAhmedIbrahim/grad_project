import 'package:flutter/material.dart';
import 'package:grad_project/models/workspace_model.dart';
import 'package:grad_project/modules/details_screen.dart';
import 'package:grad_project/modules/login_screen.dart';
import 'package:grad_project/modules/sign_up.dart';
import 'package:grad_project/modules/user_location_screen.dart';
import 'package:grad_project/shared/components/components.dart';
import 'package:grad_project/shared/components/text.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var workSpaceController = TextEditingController();

  List<WorkSpaceModel> workspaces = [
    WorkSpaceModel(
      id:1,
      name:'Ideaspace',
      image: 'assets/images/space2.jpg',
      location: 'ElNozha,Cairo',
    ),
    WorkSpaceModel(
      id:2,
      name:'Elkhaima',
      image: 'assets/images/space1.jpg',
      location: 'Dokki,Giza',
    ),
    WorkSpaceModel(
      id:3,
      name:'Zeus',
      image: 'assets/images/space3.jpg',
      location: 'Dokki,Giza',
    ),

  ];

  final List<String> names = <String>[
    's',
    's',
    's',
    's',
    's',
    's',
    's',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            // height:50.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10), //border corner radius
              // boxShadow:[
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.07), //color of shadow
              //     spreadRadius: 12, //spread radius
              //     blurRadius: 7, // blur radius
              //     offset: Offset(0, 2), // changes position of shadow
              //     //first parameter of offset is left-right
              //     //second parameter is top to down
              //   ),
              //   //you can set more BoxShadow() here
              // ],
            ),
            child: Center(
              child: TextField(
                controller:workSpaceController ,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                        workSpaceController.clear();
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all( 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Hesham!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:20.0,
              ),
              Text(
                'Let\'s find you a workspace today!' ,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[700],
                ),
              ),
              // SizedBox(
              //   height:30.0,
              // ),
              // Container(
              //   margin: EdgeInsets.all(10.0),
              //   height:50.0,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10), //border corner radius
              //     boxShadow:[
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.07), //color of shadow
              //         spreadRadius: 12, //spread radius
              //         blurRadius: 7, // blur radius
              //         offset: Offset(0, 2), // changes position of shadow
              //         //first parameter of offset is left-right
              //         //second parameter is top to down
              //       ),
              //       //you can set more BoxShadow() here
              //     ],
              //   ),
              //   child: Row(
              //     children: <Widget>[
              //       Expanded(
              //         child: TextField(
              //           decoration: InputDecoration(
              //             hintText: " Search For Workspace",
              //             hintStyle: TextStyle(
              //               color: Colors.black.withAlpha(120),
              //             ),
              //             border: InputBorder.none,
              //           ),
              //           onChanged: (String keyword) {},
              //         ),
              //       ),
              //       Icon(
              //         Icons.search,
              //         color: Colors.black.withAlpha(120),
              //       ),
              //       IconButton(
              //         onPressed: () async {
              //
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context)=> LocationScreen())
              //           );
              //         },
              //         icon: Icon(
              //           Icons.my_location,
              //           color: Colors.lightBlue,
              //         ),
              //       )
              //     ],
              //   ),
              //
              // ),
              SizedBox(
                height:30.0,
              ),
              Text(
                'Recommended Workspaces',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Container(
                height: 240,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) => buildWorkspaceItem(workspaces[index]) ,
                  separatorBuilder: (context, index) =>SizedBox(
                    width: 20,
                  ),


                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Text(
                'Popular Workspaces',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Container(
                height: 240,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder:(context, index) => buildWorkspaceItem(workspaces[index]) ,

                  separatorBuilder: (context, index) =>SizedBox(
                    width: 20,
                  ),


                ),
              ),
              SizedBox(
                height:20.0,
              ),
              Text(
                'Newest Workspaces',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Container(
                height: 240,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) => buildWorkspaceItem(workspaces[index]) ,
                  separatorBuilder: (context, index) =>SizedBox(
                    width: 20,
                  ),


                ),
              ),
              SizedBox(
                height:30.0,
              ),
              // Text(
              //   'Latest Reviews',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 25.0,
              //     color: Colors.grey[800],
              //   ),
              // ),
              // SizedBox(
              //   height:30.0,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       width: double.infinity,
              //       height: 220,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(25.0),
              //         image:DecorationImage(
              //           image: AssetImage('assets/images/space2.jpg'),
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.only(top:15.0),
              //         child: Align(
              //           alignment: Alignment.topRight,
              //           child: Container(
              //             decoration: BoxDecoration(
              //               color: Colors.lightBlue.withOpacity(1),
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10),
              //               ),
              //             ),
              //             height: 42,
              //             width: 110.0,
              //             child: Align(
              //               alignment: Alignment.center,
              //               child: Text(
              //                 "20LE/hour",
              //                 style: TextStyle(
              //                   fontSize: 20.0,
              //                   color:Colors.white,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       height:10.0,
              //     ),
              //     Text(
              //       'Ideaspace Workspace',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.grey[700],
              //       ),
              //     ),
              //     SizedBox(
              //       height:10.0,
              //     ),
              //     Text(
              //       'ElNozha,Cairo',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.grey[500],
              //       ),
              //     ),
              //     SizedBox(
              //       height:20.0,
              //     ),
              //     Text(
              //       'We Couldn\'t have found a more perfect place to stay '
              //           'in the ares - it\'s just perfect! The attention to detail not '
              //           'just in our room but the whole property is outstanding.',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.grey[500],
              //       ),
              //     ),
              //     SizedBox(
              //       height:20.0,
              //     ),
              //     defaultButton(
              //       function: ()
              //       {
              //         print('more reviews.');
              //       },
              //       text: 'More Reviews',
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height:40.0,
              // ),
              Text(
                'Continue?',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              defaultButton(
                function: ()
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SignUp())
                  );
                },
                text: 'Create Account',
              ),
              SizedBox(
                height:25.0,
              ),
              Text(
                'By registering an account, you aree to Co-Workingspace '
                    'Terms of Use and Privacy Policy',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:50.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  defaultButton(
                    function: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> LoginScreen())
                      );
                    },
                    text: 'Login',
                  ),

                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildWorkspaceItem(WorkSpaceModel workspace) => Row(
    children: [
      GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 210,
              height: 180,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('${workspace.image}'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.withOpacity(1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    height: 42,
                    width: 110.0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "20LE/hour",
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height:5.0,
            ),
            Text(
              '${workspace.name}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height:5.0,
            ),
            Text(
              '${workspace.location}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> details_screen())
          );
        },
      ),
      // SizedBox(
      //   width:20,
      // ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(40.0),
      //         ),
      //         child: Image(
      //           image: AssetImage('assets/images/elkhaima.jpg'),
      //           height: 140.0,
      //           width: 210.0,
      //         )
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'ElKhaima Workspace',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[700],
      //       ),
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'Dokki,Gize',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[500],
      //       ),
      //     ),
      //   ],
      // ),
      // SizedBox(
      //   width:20,
      // ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(40.0),
      //         ),
      //         child: Image(
      //           image: AssetImage('assets/images/zeus.jpg'),
      //           height: 140.0,
      //           width: 245.0,
      //         )
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'Zeus Workspace',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[700],
      //       ),
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'Dokki,Giza',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[500],
      //       ),
      //     ),
      //   ],
      // ),
    ],
  );
}