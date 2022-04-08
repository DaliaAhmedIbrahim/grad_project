import 'package:flutter/material.dart';
import 'package:grad_project/modules/login_screen.dart';

import '../shared/components/components.dart';

class ResetPassword extends StatefulWidget
{
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

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey ,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
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

                  defaultFormField(
                      controller: passwordController,
                      label: 'New Password',
                      prefix: Icons.lock,
                      suffix:isPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isPassword,
                      suffixPressed: (){
                        setState(() {
                          isPassword = ! isPassword ;
                        });

                      },

                      type: TextInputType.visiblePassword,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'password is too short';
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
                      suffix:isConfirmPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isConfirmPassword,
                      suffixPressed: (){
                        setState(() {
                          isConfirmPassword = ! isConfirmPassword ;
                        });

                      },

                      type: TextInputType.visiblePassword,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'password is too short';
                        }
                        return null;
                      }

                  ),




                  SizedBox(
                    height: 30.0,
                  ),


                  defaultButton(
                    text: 'Submit',
                    function: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      if (formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);
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
