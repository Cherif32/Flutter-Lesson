import 'package:flutter/material.dart';
import 'package:flutter_text_field/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

final _formKey = GlobalKey<FormState>();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Align(
                   alignment: Alignment.center,
                   child: Text(
                    "Login",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black
                    ),
                    ),
                 ),
                  SizedBox(height: 50),
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
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter your email",
               prefixIcon: Icon(
                Icons.email,
                color: Colors.purple,
                ),
            ),
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
                    controller: _passwordController,
                    obscureText: false,
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
                     ),
              ),
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text("Don't have an account?"),
                     TextButton(
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                     }, 
                     
                     child: Text("Sign up")),
                   ],
                 ),
                 SizedBox(height: 20),
                 InkWell(
                  onTap: (){
               print(_emailController.text);
               print(_passwordController.text);
                  },
                   child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                    ),
                   ),
                 ),
            
              ],
              ),
          ),
        ),
      ),
    );
  }
}