
import 'package:custom_widget/widgets/custom_button.dart';
import 'package:custom_widget/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  final String amount;

  const BalanceCard({
    super.key, 
    required this.title,
    required this.amount,
    });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget balanceCard(String title, String amount){
  return Container(
    width: double.infinity,
    height: 210,
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        colors: [Color(0xFF441487), Color(0xFFD400FE)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      textWidget(title,Colors.white,15,FontWeight.w400),
      textWidget(amount,Colors.white,36,FontWeight.w700),

      SizedBox(height: 20),
      Row(children: [
        Expanded(
          child: customButton(
            text: "Send",
            icon: Icons.send,
            iconColor: Colors.white,
            buttonColor: Colors.blue,
            textColor: Colors.white,
            onTap: (){
              print("Send");
            },
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: customButton(
              text: "Deposit",
            icon: Icons.card_giftcard,
            iconColor: Colors.black,
            buttonColor: Colors.white,
            textColor: Colors.black,
            onTap: (){
              print("Deposit");
            },
        )),
      ],)
    ],),
  );
}