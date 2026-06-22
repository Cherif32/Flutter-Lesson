import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/house-image.jpeg"),
            fit: BoxFit.cover,
            ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("For Sale",style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  ),),
              ),
              SizedBox(height: 10,),
              Text("Clinton Villa",style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                ),),
                Row(children: [
                   Row(
                children: [
                  Icon(Icons.location_on,color: Colors.white,size: 20,),
                  Text("Los Angeles",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
              SizedBox(width: 10,),
                    Row(
                children: [
                  Icon(Icons.square_foot,color: Colors.white,size: 20,),
                  Text("2,546 sq/m",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
                ],)
        
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.favorite,color: Colors.yellow,size: 20,),
            ),
            SizedBox(height: 20,),
                     Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star,color: Colors.white,size: 20,),
                  Text("4.4 Reviews",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
          ],)
        ],
      ),
    ),
      SizedBox(height: 20,),
      Container(
        width: double.infinity,
         height: MediaQuery.of(context).size.height*0.5,
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
         ),
         child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
                    Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("assets/images/bird.jpeg"),fit: BoxFit.cover,),
              ),

            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
              Text("James Minler",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
              Text("Property Owner"),
            ],)
            ],),
            Row(
              children: [
                   Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.call,
              color: Colors.red,
              size: 20,
              ),
            ),
            SizedBox(width: 10,),
                   Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.email,
              color: Colors.red,
              size: 20,
              ),
            ),
            ],),
          ],)
         ],),
      ),
        ],
      ),
      )
    );
  }
}