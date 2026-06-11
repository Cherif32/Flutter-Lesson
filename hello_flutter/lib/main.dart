

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello Flutter",style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold,letterSpacing: 5),)),
    );
  }
}