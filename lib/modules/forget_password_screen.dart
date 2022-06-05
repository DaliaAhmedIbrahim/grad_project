import 'package:flutter/material.dart';
import 'package:grad_project/Networking/Authentication/ForgetPassword.dart';
import 'package:grad_project/modules/reset_password_screen.dart';
import '../shared/components/components.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forget password ?',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Don\'t worry! it happens. please enter the email address associated with your account.',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      label: 'Email ID',
                      prefix: Icons.alternate_email_sharp,
                      type: TextInputType.emailAddress,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'email must not be empty';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                      text: 'Submit',
                      function: () async {
                        // save data or send data to the internet "API".
                        if (formKey.currentState!.validate()) {
                          await ApiForget.ForgetPassword(emailController.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPassword()));
                        } else {
                          print('false');
                        }
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
