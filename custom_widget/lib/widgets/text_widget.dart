import 'package:flutter/material.dart';

Widget textWidget(String text, Color textColor,double size, FontWeight weight){
  return Text(text,style:TextStyle(
    color: textColor,
    fontSize: size,
    fontWeight: FontWeight.bold
    ),
    );
}