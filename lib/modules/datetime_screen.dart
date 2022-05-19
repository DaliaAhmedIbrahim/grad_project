import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_range/time_range.dart';


class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({Key? key}) : super(key: key);

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {

  DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(2022,1);
  final lastDate = DateTime(2025,12);

  // final _defaultTimeRange = TimeRangeResult(
  //   TimeOfDay(hour:8, minute: 00),
  //    TimeOfDay.now(),
  // );

  TimeRangeResult? _timeRange;

  // void initState() {
  //   super.initState();
  //   _timeRange = _defaultTimeRange;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Text(
          'Set Date and Time',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          // Text(
          //     "Selected"+ " " + '$selectedDate'.split(' ')[0],
          //   style: TextStyle(fontSize: 20.0),
          // ),
          //SizedBox(height: 10,),
          CalendarDatePicker(
              initialDate: selectedDate,
              firstDate: firstDate,
              lastDate: lastDate,
              onDateChanged: (newDate){
                setState(() {
                  selectedDate=newDate;
                });
                //print("New Date $newDate");
              },
          ),


          TimeRange(
            fromTitle: Text(
              'FROM',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                //fontWeight: FontWeight.w600,
              ),
            ),
            toTitle: Text(
              'TO',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                //fontWeight: FontWeight.w600,
              ),
            ),
            titlePadding:20.0 ,
            textStyle: TextStyle(
              color: Colors.black,
            ),
            activeTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            borderColor: Colors.black54,
            activeBorderColor: Colors.blue,
            backgroundColor: Colors.transparent,
            activeBackgroundColor: Colors.blue,
            firstTime: TimeOfDay(hour: 8, minute: 00),
            lastTime: TimeOfDay(hour: 21, minute: 00),
            initialRange: _timeRange,
            timeStep: 60,
            timeBlock: 60,
            onRangeCompleted: (range) => setState(() => _timeRange = range),
          ),
          SizedBox(height: 30),
          if (_timeRange != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Selected ',
                          style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold,),
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        '${_timeRange!.start.format(context)} - ${_timeRange!.end.format(context)} ' + ' : ' + '$selectedDate'.split(' ')[0],
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 80.0),
                  //   child: Text(
                  //     '$selectedDate'.split(' ')[0],
                  //     style: TextStyle(fontSize: 18, color: Colors.black),
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left:190.0,top: 25.0),
                    child: Container(
                      height: 50.0,
                      width: 190.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {},
                        child: Text(
                            'Review Booking',
                          style: TextStyle(
                            fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

        ],
      ),

    );
  }


}
