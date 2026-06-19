import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Profile Page",
              style: TextStyle
              (color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              ),
              ),
                     Text(
              "This is the Cart page, I built it using Flutter",
              style: TextStyle
              (color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              ),
              ),
          ],
        ),
      );
  }
}