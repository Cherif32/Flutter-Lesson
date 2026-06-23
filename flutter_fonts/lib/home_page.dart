import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Fonts",
        style: TextStyle(
          color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hello, World!",
              style: TextStyle(
                fontFamily: 'CedarvilleCursive',
                fontSize: 40, 
                fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 20),
            Text(
              "Hello, World!",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 40, 
                fontWeight: FontWeight.w900,
                ),
            ),
            SizedBox(height: 20),
            Container(
              width: 350,
              height: 200,
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
             decoration: BoxDecoration(
               color: Colors.teal,
               borderRadius: BorderRadius.circular(10),
             ),
              child: Text(
                "Hello, Cherif!",
                style: TextStyle(
                  fontFamily: 'CedarvilleCursive', 
                  fontSize: 40, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}