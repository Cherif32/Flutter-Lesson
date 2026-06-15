import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Layouts",style: TextStyle(color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
Align(
  alignment: Alignment.center,
  child: Text("Column",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,
  ),
  ),
  ),
 SizedBox(height: 20),
 Container(
  width: double.infinity,
  height: 600,
  margin: EdgeInsets.symmetric(horizontal: 10),
  color: Colors.green,
   child:Column(
    mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.end,
        children: [
      Icon(Icons.email,color: Colors.black,size: 60,),
      Icon(Icons.person,color: Colors.black,size: 60,),
      Icon(Icons.home,color: Colors.black,size: 60,),
        ],
        ),
    ],

   ),
 ),

        ],
      ),
    );
  }
}



  