
import 'package:custom_widget/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required String text,
  required IconData icon,
  required Color buttonColor,
  required Color iconColor,
  required Color textColor,
  void Function()? onTap
  
  }){
  return InkWell(
    onTap:onTap,
    child: Container(
      height: 50,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(
          icon ,
          color: iconColor,
          size: 20,
          ),
          SizedBox(width: 10),
        textWidget(text,textColor,16,FontWeight.w400),
      ],),
    ),
  );
}