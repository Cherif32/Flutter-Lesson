import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
body: Column(
  children: [
    SizedBox(height: 45),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Main row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left row
            Row(
              children:[
         Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
             color: Colors.black,
             border: Border.all(color: Colors.orange,width: 2),
          ),
         
         ),
         SizedBox(width: 10,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Hi, Victoria",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Text("Welcome back 👋"),
             ],)
            ]),

              // Right row
            Row(children:[
                   Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
             color: Colors.white,
          ),
         child: Icon(Icons.support_rounded),
         ),
         SizedBox(width: 10,),
                 Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
             color: Colors.white,
          ),
           child: Icon(Icons.notifications),
         ),
            ])
          ],)
        ],
      ),),
  ]
),
    );
  }
}