import 'package:flutter/material.dart';
import 'package:flutter_image/exercise.dart';
import 'package:flutter_image/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: ExercisePage(),
    );
  }
}
