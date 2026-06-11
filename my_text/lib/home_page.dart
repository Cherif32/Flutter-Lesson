import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My text" ,style:TextStyle(color:Colors.white,),),centerTitle: true,backgroundColor:Colors.red,),
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
          "My name is Nkemata Cherif",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
           fontWeight: FontWeight.w900,
            letterSpacing: 3,
             height: 3,
             //backgroundColor: Colors.blue,
             //decoration: TextDecoration.overline,
             ),
             textAlign: TextAlign.center,
             //maxLines: 2,
             //overflow: TextOverflow.ellipsis,
             ),
SizedBox(height: 10),

       RichText(
        text:TextSpan(
        text: "my name is",
        style:TextStyle(color:Colors.red,
        fontSize: 20,
        fontWeight: FontWeight.w900,
        ),
        children: [
          TextSpan(   
            text: " Macsmith ",
               style:TextStyle(
                color:Colors.purple,
        fontSize: 40,
        ),
            ),
          TextSpan(   
            text: " how are you ",
               style:TextStyle(
                color:Colors.blue,
        fontSize: 40,
        ),
            ),
        ]
        ),
     
        ),
        ],
        ),
      ),
     );
  }
}