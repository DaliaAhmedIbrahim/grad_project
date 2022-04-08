import 'package:flutter/material.dart';
import 'package:grad_project/shared/components/components.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreen();
}

class _AddCardScreen extends State<AddCardScreen> {


  var cvvController = TextEditingController();
  var nameController = TextEditingController();
  var cardNumberController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Card',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                  SizedBox(
                    height: 50.0,
                  ),
                  defaultFormField(
                    controller: cardNumberController,

                    validate: (String value)
                    {
                      if(value.isEmpty)
                      {
                        return'card number must not be empty';
                      }
                      return null;
                    },
                    label: 'Card Number',
                    prefix: Icons.credit_card,
                    type: TextInputType.number,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  defaultFormField(
                      controller: nameController,
                      label: "Name",
                      prefix: Icons.edit,
                      type: TextInputType.name,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'name must not be empty';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  defaultFormField(
                      controller: cvvController,
                      label: "CVV",
                      prefix: Icons.lock,
                      type: TextInputType.number,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'cvv number must not be empty';
                        }
                        return null;
                      }
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
                        onPressed: () {

                          if (formKey.currentState!.validate()){
                            print(cardNumberController.text);
                            print(nameController.text);
                            print(nameController.text);
                          }
                        },
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
        )
    );
  }
}
