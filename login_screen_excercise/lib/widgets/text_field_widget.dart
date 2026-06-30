import 'package:flutter/material.dart';

Widget customTextField({
  required String hintText,
   IconData? icon,
  }){
  return     TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: Icon(icon),
             enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
             focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
        color: Colors.black,
      ),
    ),
              ),
              
              );
}