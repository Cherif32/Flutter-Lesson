import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Stack Page",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
      ),
      ),
      centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 600,
            color: Colors.green,

            child: Stack(
              children: [

                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                ),

                Positioned(
                  bottom: 100,
                  left: 30,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.purple,
                  ),
                ),

                Positioned(
                  top: 30,
                  right: 30,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.blue,
                  ),
                ),

              ]
            )
          )
        ],
      )
    );
  }
}