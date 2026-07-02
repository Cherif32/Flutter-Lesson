import 'package:bill_payment/constants/colors.dart';
import 'package:bill_payment/constants/images.dart';
import 'package:bill_payment/constants/string.dart';
import 'package:flutter/material.dart';

Widget appBarWidget(){
  return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                border: Border.all(color: white, width: 2),
               shape: BoxShape.circle,
                  ),
                  child:    Container(
              
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(profileImageUrl),),
               shape: BoxShape.circle,
                  ),
                ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(welcomeText, style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w500,
                   color: white,
                   ),
                   ),
                  Text(usernameText, style: TextStyle(
                    fontSize: 12, 
                    fontWeight: FontWeight.w500,
                   color: white,
                   ),
                   ),
                ],)
              ],),
            
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white.withValues(alpha: 0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/icons/light-mode.png"),
                  ),
                  SizedBox(width: 15),
                        Container(
                    height: 45,
                    width: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white.withValues(alpha: 0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/icons/notification-icon.png"),
                  ),
                  ],)
            ],),
          );
}