import 'package:custom_widget/widgets/balance_card.dart';
import 'package:custom_widget/widgets/custom_button.dart';
import 'package:custom_widget/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              balanceCard("Total Balance","NGN 300,000"),
              SizedBox(height: 20),
              textWidget("Register to get started",Colors.red,50,FontWeight.w400),
              const Spacer(),
customButton(
              text: "Register",
            icon: Icons.card_giftcard,
            iconColor: Colors.white,
            buttonColor: Colors.red,
            textColor: Colors.white,
            onTap: (){
              print("Deposit");
            },
        ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}