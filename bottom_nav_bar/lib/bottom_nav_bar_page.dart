import 'package:bottom_nav_bar/cart_page.dart';
import 'package:bottom_nav_bar/home_page.dart';
import 'package:bottom_nav_bar/profile_page.dart';
import 'package:bottom_nav_bar/search_page.dart';
import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {

  int _selectedIndex = 0;

final List<Widget> _pages = [
  HomePage(),
  SearchPage(),
  CartPage(),
  ProfilePage(),

];

void _onItemTapped(int myIndex){
setState(() {
  _selectedIndex = myIndex;
});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Bottom Nav Bar",
          style: TextStyle(color: Colors.white,),
          ),
        centerTitle: true,
      ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.blue,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile"
          ),

      ]),
    );
  }
}