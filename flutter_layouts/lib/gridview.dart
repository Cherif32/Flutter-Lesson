import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "GridView Page",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
      ),
      ),
      centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
             Expanded(
         child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
           childAspectRatio: 1,
            ),
            children: [
             SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      ),
                
                    ),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      ),
                
                    ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                         decoration: BoxDecoration(
                             color: Colors.red,
                       shape: BoxShape.circle,
                         ),
                         child: Center(child: Text("2",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),),),
                          ),
                        ),
                  ],
                ),
              ),
                  SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      ),
                
                    ),
                  
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      ),
                
                    ),
                      
                  ],
                ),
              ),
           SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      ),
                
                    ),
                 
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      ),
                
                    ),
                    
                  ],
                ),
              ),
            ],
            ),
             ),
          ],
        ),
      )
    );
  }
}