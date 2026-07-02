import 'package:bill_payment/constants/colors.dart';
import 'package:bill_payment/constants/images.dart';
import 'package:bill_payment/constants/string.dart';
import 'package:bill_payment/widget/appbar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
        Container(
          height: size.height,
          width: size.width,
         decoration: BoxDecoration(
         gradient: purpleGradient,
         ),
          child: Stack(
            children: [
              Container(
            height: size.height*0.5,
          width: size.width,
       decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(patternUrl,))
       ),
       child: Column(
        children: [
          SizedBox(height: size.height*0.07,),
         appBarWidget(),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
            children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Total Balance",
              style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500,
               color: white,
               ),
               ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("₦ 300,000",
                style: TextStyle(
                  fontSize: 36, fontWeight: FontWeight.w700,
                 color: white,
                 ),
                 ),
SizedBox(width: 14,),
Container(
  padding: EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: pink,
    borderRadius: BorderRadius.circular(6),
  ),
  child: Icon(Icons.visibility,
  color: white,size:12,
  ),
),
              ],
            ),

            SizedBox(height: 18,),
            Row(
              children: [
              Expanded(
                child: InkWell(
                  onTap: (){}, 
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.arrow_upward),
                      SizedBox(width: 7,),
                      Center(
                        child: Text("Send",
                        style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500,
                         color: black,
                         ),
                         ),
                      ),
                    ],),
                  ),),
              ),
              SizedBox(width: 10,),
                   Expanded(
                child: InkWell(
                  onTap: (){}, 
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.arrow_downward),
                      SizedBox(width: 7,),
                      Center(
                        child: Text("Deposit",
                        style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500,
                         color: black,
                         ),
                         ),
                      ),
                    ],),
                  ),),
              ),
            ],),

            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: pink,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             Text(
              "Bonus Balance",
              style: TextStyle(
                color: white,
             fontWeight: FontWeight.w400,fontSize: 17,
             )),
             Text(
              "₦3,800.00",
              style: TextStyle(
                color: white,
             fontWeight: FontWeight.w400,fontSize: 17,
             )),
       
              ],),
            )
           ],),
         )
        ],
       ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                            height: size.height*0.59,
                          width: size.width,
                            decoration: BoxDecoration(
                                 color: white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
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