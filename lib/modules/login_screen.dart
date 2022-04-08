import 'package:flutter/material.dart';
import 'package:grad_project/layout/home_layout.dart';
import 'package:grad_project/modules/forget_password_screen.dart';
import 'package:grad_project/modules/sign_up.dart';
import 'package:grad_project/shared/components/components.dart';

class LoginScreen extends StatefulWidget
{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

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
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                    height: 200,
                    width: 500,

                  ),

                  SizedBox(
                    height: 40.0,
                  ),

                  defaultFormField(
                      controller: emailController,
                      label: "Email",
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'email must not be empty';
                        }
                        return null;
                      }
                  ),

                  SizedBox(
                    height: 15.0,
                  ),


                  defaultFormField(
                      controller: passwordController,
                      label: 'PassWord',
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
                    height: 30.0,
                  ),

                  defaultButton(
                    text: 'Login',
                    function: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeLayoutScreen()));
                      if (formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),


                  SizedBox(
                    height: 10.0,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> ForgetPassword())
                            );
                          },
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
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

    );
  }
}
