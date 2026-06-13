// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.purple,
        title: Text(
          "My Container",
        style: TextStyle(
          color: Colors.white,
          ),
          ),
          centerTitle: true,
      ),

      body: Column(
        children: [
      Container(
        height: 250,
        width: 250,
        child:  Container(color: Colors.red,height: 70,width: 70,),
       alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal:40),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
      decoration: BoxDecoration(
      // color: Colors.white,
       // shape: BoxShape.rectangle,
      // borderRadius: BorderRadius.circular(30),
      // border: Border(bottom: BorderSide(color: Colors.red,width: 5)),
      gradient: LinearGradient(
        colors: [Colors.purple, Colors.red] , 
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.2),
          offset: Offset(2, 2),
          blurRadius: 5,
          spreadRadius: 2,
        )
      ]
      )
      ),
      ],
      ),
    );
  }
}