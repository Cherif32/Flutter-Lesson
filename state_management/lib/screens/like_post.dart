import 'package:flutter/material.dart';

class LikePost extends StatefulWidget {
  const LikePost({super.key});

  @override
  State<LikePost> createState() => _LikePostState();
}

class _LikePostState extends State<LikePost> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Like Post', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
               liked==true? "Unlike my post" : "Like my Post",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {
                  setState(() {
                    liked = !liked;
                  });
                  print(liked==true? "Like me":"Unlinked");
                },
                icon: Icon(
                liked == true? Icons.heart_broken:  Icons.heart_broken_outlined,
                  size: 100,
                  color:liked ==true? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
