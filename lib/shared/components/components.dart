import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity ,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function() function,
  required String text,



}) =>

    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          //isUpperCase ? text.toUpperCase() :
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
            30
        ),
      ),
    );



Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function (String)? onChange,
  bool isPassword = false,
  required Function validate,
  required String label,
  String? labelText,
  required IconData prefix,
  IconData?  suffix,
  final void  Function()? suffixPressed,




}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,

  validator: (String? value)
  {
    return validate(value);

  },
  decoration: InputDecoration(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    hintText: label,
    labelText: labelText,
    hintStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,

    ),
    prefixIcon: Icon(
      prefix,
    ),

    suffixIcon: suffix != null ? IconButton(
      onPressed: suffixPressed,
      icon: Icon(
        suffix,
      ),
    ) : null,
    //border: OutlineInputBorder(),
  ),
);






