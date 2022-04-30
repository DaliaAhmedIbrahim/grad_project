import 'package:flutter/material.dart';
import 'package:grad_project/shared/components/components.dart';


class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({Key? key}) : super(key: key);

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();

}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var locationController = TextEditingController();
  var mobileController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(
        //       Icons.settings,
        //       color: Colors.green,
        //     ),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          // onTap: () {
          //   FocusScope.of(context).unfocus();
          // },
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(fontSize:25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage('https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/277008078_1013007256279028_2166226649150906661_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGqjcAakDObEdaVjM9u4g2XbtAZGuKCkhRu0Bka4oKSFMPw_03YSanu3I7xXQaxo1qQSoj4mgC46_FJWlSUF0VW&_nc_ohc=t6b8XF_kY1QAX9KI33v&tn=miokRJjKnCygEYZj&_nc_ht=scontent.fcai22-2.fna&oh=00_AT9DjVHpCYpqCb_8a9luRgRmRmVn1ud6yyiNPONDUomOpA&oe=62685964'),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          bottom: 3.0,
                          end: 3.0

                      ),
                      child: Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Colors.blue,
                              ),
                              color: Colors.blue,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ),

                  ],
                ),


              ),
              SizedBox(
                height: 35,
              ),
              defaultFormField(
                controller: nameController,
                validate: (String value)
                {
                  if(value.isEmpty)
                  {
                    return'Enter your name';
                  }
                  return null;
                },
                labelText:'Full Name',
                label: 'Esraa Ahmed',

                prefix: Icons.edit,
                type: TextInputType.name,
              ),

              SizedBox(
                height: 15.0,
              ),

              defaultFormField(
                  controller: emailController,
                  labelText:'Email',
                  label: "esraa@gmail.com",

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
                  labelText:'PassWord',
                  label: '*********',
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
                height: 15.0,
              ),


              defaultFormField(
                  controller: mobileController,
                  labelText:"Mobile Number" ,
                  label: "01154990684",
                  prefix: Icons.phone,
                  type: TextInputType.number,
                  validate: (String value)
                  {
                    if (value.isEmpty)
                    {
                      return'mobile number must not be empty';
                    }
                    return null;
                  }
              ),

              SizedBox(
                height: 15.0,
              ),

              defaultFormField(
                controller: locationController,
                validate: (String value)
                {
                  if(value.isEmpty)
                  {
                    return'Enter your location';
                  }
                  return null;
                },
                labelText:'Location',
                label: 'Giza',

                prefix: Icons.edit,
                type: TextInputType.name,
              ),

              SizedBox(
                height: 30.0,
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
                    onPressed: () {},
                    color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}

