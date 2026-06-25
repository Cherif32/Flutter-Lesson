import 'package:flutter/material.dart';
import 'package:flutter_text_field/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("TextField",style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                //    Text(
                // "First Name",style: TextStyle(
                // fontSize: 20,
                // fontWeight: FontWeight.w400,
                // color: Colors.black
                // ),
                // ),
              TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: "First Name",
            border: OutlineInputBorder(),
            hintText: "Enter your first name",
   prefixIcon: Icon(
    Icons.person,
    color: Colors.purple,
    ),
          )
                 ),
SizedBox(height: 20),
              TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: "Phone Number",
            border: OutlineInputBorder(),
            hintText: "Enter your Phone Number",
   prefixIcon: Icon(
    Icons.call,
    color: Colors.purple,
    ),
          )
                 ),
SizedBox(height: 20),
              Text(
                "Email",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black
                ),
                ),
               Container(
                padding: EdgeInsets.only(left: 4),
                decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(10),
                ),
                 child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter your email",
   prefixIcon: Icon(
    Icons.email,
    color: Colors.purple,
    ),
          )
                 ),
               ),
               SizedBox(height: 20),
              Text(
                "Password",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black
                ),
                ),
               Container(
                padding: EdgeInsets.only(left: 4),
                decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(10),
                ),
                 child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter your password",
   prefixIcon: Icon(
    Icons.lock,
    color: Colors.purple,
    ),
   suffixIcon: Icon(
    Icons.visibility_off,
    color: Colors.purple,
    ),
    
          )
                 ),
               ),

        
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Text("Already have an account?"),
                   TextButton(
                    onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                   }, 
                   
                   child: Text("Login")),
                 ],
               ),

               SizedBox(height: 20),

               InkWell(
                onTap: (){
                  print("Button clicked");
                },
                 child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                 ),
               ),
          
            ],
            ),
        ),
      ),
    );
  }
}