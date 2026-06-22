import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
            ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

body: SingleChildScrollView(
  child: Column(
    children: [
      // 1. Image.asset() : This is used to display an image from the assets folder.
      Text("Normal image in flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
  Image.asset("assets/images/flower.jpeg"),
  SizedBox(height: 20),
        Text("Using child property directly",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
  Align(
    alignment: Alignment.center,
    child: Container(
      height: 250,
      width: 300,
      color: Colors.pink,
      child: Image.asset("assets/images/flower.jpeg",)
    ),
  ),
  SizedBox(height: 20),
        Text("Using decoration property",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
  Align(
    alignment: Alignment.center,
    child: Container(
      height: 250,
      width: double.infinity,
  decoration: BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(
            image: AssetImage("assets/images/flower.jpeg"),
         fit: BoxFit.cover,
       
            )
  ),
    ),
  ),
  SizedBox(height: 20),
        Text("Another method of using child without decoration",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
  Align(
    alignment: Alignment.center,
    child: Container(
      height: 250,
      width: 300,
      color: Colors.blue,
child:  Image(image: AssetImage("assets/images/bird.jpeg"),fit: BoxFit.cover,),
    ),
  ),
  SizedBox(height: 20),
        Text("Getting image from the internet",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          ),
          ),
          Image.network("https://res.cloudinary.com/ilnqjw4s/image/upload/v1782152798/Flower_v5lycp.jpg"),
  SizedBox(height: 20),
        Text("Getting image from the internet with decoration property",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          ),
          ),
  Align(
    alignment: Alignment.center,
    child: Container(
      height: 250,
      width: 300,
      color: Colors.blue,
child:  Image(image: NetworkImage("https://res.cloudinary.com/ilnqjw4s/image/upload/v1782152859/Bird_ia827i.jpg"),fit: BoxFit.cover,),
    ),
  ),
  SizedBox(height: 150),

  ],
  ),
),
    );
  }
}