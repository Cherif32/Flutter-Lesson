import 'package:flutter/material.dart';

class StackExcercisePage extends StatelessWidget {
  const StackExcercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                            height: MediaQuery.of(context).size.height*0.7,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                               color: Colors.deepPurpleAccent,
                               borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                               ),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                Container(
                                  width: 90,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.purple.withValues(alpha: 0.7),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  decoration: BoxDecoration(
                                     color: Colors.purple.withValues(alpha: 0.7),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                     Container(
                                  width: 90,
                                  height: 70,
                                  decoration: BoxDecoration(
                                 color: Colors.purple.withValues(alpha: 0.7),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],),
                            )
                          ],)
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                            height: MediaQuery.of(context).size.height*0.55,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                               color: Colors.grey[600],
                               borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                               ),
                          ),
                ),
              ),
            ],
          ),
        ),
        ],
      )
    );
  }
}