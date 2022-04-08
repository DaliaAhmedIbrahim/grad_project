import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/modules/add_card_screen.dart';

class SavedCardScreen extends StatefulWidget {
  const SavedCardScreen({Key? key}) : super(key: key);

  @override
  State<SavedCardScreen> createState() => _SavedCardScreen();
}

class _SavedCardScreen extends State<SavedCardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                'Payment',
                style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
            ),
              SizedBox(
                height:50.0,
              ),
              Text(
                'No Saved Cards',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height:20.0,
              ),
              Text(
                'Add a credit or debt card to seamless bookings',
                style: TextStyle(
                  fontSize: 15.0,

                ),
              ),

            SizedBox(
              height:50.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text("CANCEL",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black)),
                ),

                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCardScreen()));
                  },
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2.2,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ]

        ),
      ),

    );
  }
}
