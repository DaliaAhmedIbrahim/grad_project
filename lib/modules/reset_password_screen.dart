import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:grad_project/Networking/Authentication/ResetPasssword.dart';
import 'package:grad_project/modules/login_screen.dart';

import '../shared/components/components.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<ResetPassword> createState() => _ResetPassword();
}

class _ResetPassword extends State<ResetPassword> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;
  bool isConfirmPassword = true;
  bool _onEditing = true;
  late String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset password',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  Text(
                    'Enter your verification code',
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerificationCode(
                          textStyle: TextStyle(
                              fontSize: 40.0,
                              color: Colors.lightBlue,
                          ),
                          keyboardType: TextInputType.number,
                          underlineColor: Colors.amber, // If this is null it will use primaryColor: Colors.red from Theme
                          length: 4,
                          itemSize: 40.0,
                          cursorColor: Colors.blue,
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
                      SizedBox(
                        width: 10.0,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                            onPressed: () {  },
                            child: Text(
                              'Resend code',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  // decoration: TextDecoration.underline,
                                  color: Colors.lightBlue),
                            ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      label: 'New Password',
                      prefix: Icons.lock,
                      suffix:
                          isPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isPassword,
                      suffixPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      type: TextInputType.visiblePassword,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'password is too short';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      controller: confirmPasswordController,
                      label: 'Confirm Password',
                      prefix: Icons.lock,
                      suffix: isConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      isPassword: isConfirmPassword,
                      suffixPressed: () {
                        setState(() {
                          isConfirmPassword = !isConfirmPassword;
                        });
                      },
                      type: TextInputType.visiblePassword,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'password is too short';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  defaultButton(
                    text: 'Submit',
                    function: () async {
                      // save data or send data to the internet "API".
                      if (formKey.currentState!.validate()) {
                        await ApiReset.ResetPassword(passwordController.text,
                            confirmPasswordController.text);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      } else {
                        print('false');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
