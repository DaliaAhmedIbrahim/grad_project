import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:grad_project/modules/login_screen.dart';
import 'package:grad_project/shared/components/components.dart';

class verificationScreen extends StatefulWidget {
  const verificationScreen({Key? key}) : super(key: key);

  @override
  State<verificationScreen> createState() => _verificationScreenState();
}

class _verificationScreenState extends State<verificationScreen> {

  // var verificationController = TextEditingController();
  // var verifyKey = GlobalKey<FormState>();
  bool _onEditing = true;
  late String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 200.0,
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Column(
            //       children: [
            //         defaultFormField(
            //             controller: verificationController,
            //             label: "Verification Code",
            //             type: TextInputType.number,
            //             validate: (String value)
            //             {
            //               if (value.isEmpty)
            //               {
            //                 return'Enter the code';
            //               }
            //               return null;
            //             },
            //             prefix: Icons.verified_user,
            //         ),
            //         SizedBox(
            //           height: 20.0,
            //         ),
            //         defaultButton(
            //           function: ()
            //           {
            //             if(verifyKey.currentState!.validate()){
            //               print(verificationController.text);
            //             }
            //           },
            //           text: 'Verify',
            //         ),
            //       ],
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10.0),
            //     color: Colors.grey[200],
            //   ),
            // ),
            Text(
              'Enter your verification code',
              style: TextStyle(fontSize: 25.0,),
            ),
        VerificationCode(
            textStyle: TextStyle(
                fontSize: 40.0,
                color: Colors.lightBlue),
            keyboardType: TextInputType.number,
            underlineColor: Colors.amber, // If this is null it will use primaryColor: Colors.red from Theme
            length: 4,
            itemSize: 60.0,
            cursorColor: Colors.blue,
            clearAll: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {  },
              child: Text(
                'Resend code',
                style: TextStyle(
                    fontSize: 25.0,
                    decoration: TextDecoration.underline,
                    color: Colors.lightBlue),
              ),
            ),

            ),
            onCompleted: (String value) {
              setState(() {
                _code = value;
                print(_code);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> LoginScreen()));

              });
              },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            }
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: _onEditing
                    ? Text('Please enter full code', style: TextStyle(fontSize: 20.0),)
                    : Text('Your code: $_code', style: TextStyle(fontSize: 20.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
