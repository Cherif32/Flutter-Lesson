import 'package:flutter/material.dart';

class PasswordVisibilityPage extends StatefulWidget {
  const PasswordVisibilityPage({super.key});

  @override
  State<PasswordVisibilityPage> createState() => _PasswordVisibilityPageState();
}

class _PasswordVisibilityPageState extends State<PasswordVisibilityPage> {
  bool passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter', style: TextStyle(color: Colors.white)),
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
                "Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: passwordHidden,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your password",
                    suffixIcon: IconButton(
                      onPressed: () {
                setState(() {
                          passwordHidden = !passwordHidden;
                        print("$passwordHidden");
                });
                      },
                      icon: Icon(passwordHidden==true?Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
