import 'package:flutter/material.dart';
import 'package:flutter_layouts/gridview.dart';
import 'package:flutter_layouts/stack.dart';
import 'package:flutter_layouts/stack_excercise.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: GridViewPage()
    );
  }
}
