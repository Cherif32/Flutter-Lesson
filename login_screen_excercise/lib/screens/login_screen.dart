import 'package:flutter/material.dart';
import 'package:login_screen_excercise/widgets/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
   Container(
         height: MediaQuery.of(context).size.height*0.35,
         width: MediaQuery.of(context).size.width,
     child: Stack(
       children: [
         Positioned(
          left: -100,
          right: -100,
          top: -500,
           child: Container(
            height: 1000,
            width: 1000,
           decoration: BoxDecoration(
             color: Colors.blue,
             shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/images/chef-image.jpeg"),
          alignment: Alignment.bottomCenter
          ),
           ),
           child: Stack(
  
            children: [
         Positioned(
          bottom: 380,
        left:320,
          child: Text("Order and\nGet to door step",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
                ),
                ),
           ],),
           ),
         ),
       ],
     ),
   ),


SizedBox(height: 20),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0),
  child: Column(
    children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
     borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Login",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
          SizedBox(height: 15),
          Text("Username",style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          ),
           SizedBox(height: 5),
          customTextField(
            hintText: "Enter your username",
            ),

                   SizedBox(height: 15),
          Text("Password",style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          ),
               SizedBox(height: 5),
          customTextField(
            hintText: "Enter your password",
            icon: Icons.visibility_off,
            ),
        ],),
      ),

      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(children: [
            SizedBox(width: 10),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.black,),
                  shape: BoxShape.circle,
                ),
              ),
                 SizedBox(width: 10),
              Text("Remember me"),
            ],),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
             color: Colors.blue,
              borderRadius: BorderRadius.circular(6),
              ),
              child: Center(child: Text("SIGNIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),)),
            ),
          ),
        ],
      ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 1, width: 100,color: Colors.black,),
                SizedBox(width: 10),
                Text("Social Login"),
                    SizedBox(width: 10),
                 Container(height: 1, width: 100,color: Colors.black,),
              ],
            ),
                   SizedBox(height: 50),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       InkWell(
                          onTap: (){
                            print("Facebook clicked");
                          },
                         child: Container(
                          height: 55,width: 55,
                         decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                         ),
                         child: Icon(
                          Icons.facebook,color: Colors.white,
                         
                         ),),
                       ),
                       SizedBox(width: 20),
                       InkWell(
                          onTap: (){
                            print("Google clicked");
                          },
                         child: Container(
                          height: 55,width: 55,
                         decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                         ),
                         child: Icon(
                          Icons.golf_course,color: Colors.white,
                         
                         ),),
                       ),
                     ],
                   )
    ],
  ),
),
      ],)
    );
  }
}