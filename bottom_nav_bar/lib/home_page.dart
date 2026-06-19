import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle
              (color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              ),
              ),
            Text(
              "This is the home page, I  love flutter",
              style: TextStyle
              (color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
          ],
        ),
      );
  }
}