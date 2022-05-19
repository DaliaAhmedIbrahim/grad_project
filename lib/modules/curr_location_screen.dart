import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// class CurrentLocation extends StatefulWidget {
//   CurrentLocation({Key? key}) : super(key: key);
//   @override
//   _CurrentLocationState createState() => _CurrentLocationState();
// }
// class _CurrentLocationState extends State<CurrentLocation> {
//   String? currentLocation;
//
//   late Position position;
//   void _getCurrentLocation() async {
//     LocationPermission permission;
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         setState(() {
//           currentLocation ="Permission Denied";
//         });
//       }else{
//         var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//         setState(() {
//           currentLocation ="latitude: ${position.latitude}" + " , " + "Logitude: ${position.longitude}";
//         });
//       }
//     }else{
//       var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//       setState(() {
//         currentLocation ="latitude: ${position.latitude}" + " , " + "Logitude: ${position.longitude}";
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Location"),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//           Container(
//           decoration: BoxDecoration(
//               color: Colors.teal[50]
//           ),
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical:17 ),
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       Icon(Icons.location_on),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text(
//                               'Location',
//                             ),
//                             (currentLocation!=null)?Text(currentLocation!):Container(),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: 8,
//                       ),
//                     ],
//                   ),
//                 ],
//               )),
//           MaterialButton(
//             color: Colors.blue[50],
//             onPressed: (){
//               _getCurrentLocation();
//             },
//             child: Text("Get Location"),
//           )
//           ],
//         ),
//       ),
//     ),
//     );
//   }
// }