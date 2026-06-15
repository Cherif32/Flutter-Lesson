import 'package:flutter/material.dart';
import 'package:flutter_layouts/column.dart';
import 'package:flutter_layouts/excercise.dart';
import 'package:flutter_layouts/list_view.dart';
import 'package:flutter_layouts/row.dart';

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
      home: ExercisePage()
    );
  }
}
