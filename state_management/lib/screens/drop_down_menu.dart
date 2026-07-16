import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String country = "Nigeria";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SWitch', style: TextStyle(color: Colors.white)),
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
                "DropDown Menu",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
           width: double.infinity,
                height: 70,
                color: Colors.red,
                child: Center(
                  child: DropdownButton(
                    value: country,
                    items: [
                      DropdownMenuItem(value: "Nigeria", child: Text("Nigeria")),
                      DropdownMenuItem(value: "Canada", child: Text("Canada")),
                      DropdownMenuItem(value: "Kenya", child: Text("kanya")),
                    ],
                    onChanged: (value) {
                      setState(() {
                        country = value ?? "Select a country";
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
