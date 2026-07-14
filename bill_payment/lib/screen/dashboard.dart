import 'package:bill_payment/constants/colors.dart';
import 'package:bill_payment/constants/images.dart';
import 'package:bill_payment/constants/string.dart';
import 'package:bill_payment/widget/appbar.dart';
import 'package:bill_payment/widget/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentBannerIndex = 0;

  List categorie = [
    {"icon": "assets/icons/call-1.png", "name": "Airtime"},
    {"icon": "assets/icons/data.png", "name": "Data"},
    {"icon": "assets/icons/cable.png", "name": "Cable Tv"},
    {"icon": "assets/icons/more.png", "name": "More"},
  ];

  List<Widget>? items = [
    Image.asset("assets/images/bannerpng.png"),
    Image.asset("assets/images/banner-2.png"),
  ];

  List<Widget> transactions = [
    transactionTile(
      title: "Data Top-Up",
      subTitle: "Jan 15th, 11:30:25",
      amount: "N12,000",
      status: "Success",
    ),
    transactionTile(
      title: "Airtime Top-Up",
      subTitle: "Jan 15th, 11:30:25",
      amount: "N10,000",
      status: "Success",
    ),
    transactionTile(
      title: "Cable Top-Up",
      subTitle: "Jan 15th, 11:30:25",
      amount: "N12,000",
      status: "Success",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(gradient: purpleGradient),
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.5,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(patternUrl)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.07),
                      appBarWidget(),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Total Balance",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: white,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "₦ 300,000",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                    color: white,
                                  ),
                                ),
                                SizedBox(width: 14),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: pink,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Icon(
                                    Icons.visibility,
                                    color: white,
                                    size: 12,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 18),
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.arrow_upward),
                                          SizedBox(width: 7),
                                          Center(
                                            child: Text(
                                              "Send",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.arrow_downward),
                                          SizedBox(width: 7),
                                          Center(
                                            child: Text(
                                              "Deposit",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: pink,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Bonus Balance",
                                    style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "₦3,800.00",
                                    style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
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
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: size.height * 0.59,
                    width: size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            categoryText,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...categorie.map((e) {
                              return Container(
                                width: 83,
                                height: 80,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFF5FC),
                                  border: Border.all(
                                    color: Color(0xFFF7D2FF),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(e["icon"]),
                                    SizedBox(height: 7),
                                    Text(e["name"]),
                                  ],
                                ),
                              );
                            }),
                          ],
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: CarouselSlider(
                            items: items,
                            options: CarouselOptions(
                              height: 400,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(
                                milliseconds: 800,
                              ),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentBannerIndex = index;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(items!.length, (index) {
                            final isActive = currentBannerIndex == index;
                            return AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: 10,
                              width: isActive ? 25 : 10,
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                borderRadius: isActive
                                    ? BorderRadius.circular(5)
                                    : BorderRadius.circular(20),
                                color: isActive ? purple1 : Colors.grey[400],
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transactions",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: black,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: purple3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: transactions.isEmpty? Column(
                            children: [
                              SizedBox(height: 20,),
                              Image.asset("assets/images/empty-state.png"),
                                  SizedBox(height: 5,),
                                  Text("No tRansactions available")
                            ],
                          ):SingleChildScrollView(
                            child: Column(
                              children: [
                                ...transactions.map((e) {
                                  return e;
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


