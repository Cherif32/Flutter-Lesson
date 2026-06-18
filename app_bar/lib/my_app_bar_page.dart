import 'package:app_bar/second_screen.dart';
import 'package:flutter/material.dart';


class MyAppBarPage extends StatelessWidget {
  const MyAppBarPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        leading:Icon(
              Icons.menu, color: Colors.black,
              size: 50,
            ),
        title: const Text(
          'App Bar',style: TextStyle(
          color: Colors.black,
        ),
        ),
        actions: [
          Icon(Icons.search,color: Colors.black,size: 30,),
          SizedBox(width: 10,),
          Icon(Icons.notifications_outlined,color: Colors.black,size: 30,),
          SizedBox(width: 10,),
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
                margin: EdgeInsets.only(bottom: 10),
            ),
          ],
        ),
      )
    );
  }
}
