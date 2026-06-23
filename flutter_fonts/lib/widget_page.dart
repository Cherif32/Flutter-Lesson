import 'package:flutter/material.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {

  bool isSwitchOn = false;
  bool isCheckboxOn = false;

  void toggleSwitch() {
    setState(() {
      isSwitchOn = !isSwitchOn;
    });
  }

  void toggleCheckbox() {
    setState(() {
      isCheckboxOn = !isCheckboxOn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter widgets",
        style: TextStyle(
          color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(height: 20),
        Container(
              height:100,
              width: 100,
              color:isSwitchOn == true ? Colors.yellow : Colors.black,),
            SizedBox(height: 30),
    Text("Switch widget",
    style: TextStyle(
      fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    Switch(
      value: isSwitchOn,
      onChanged: (bool value){  toggleSwitch();}
      ),
             
      Text(isCheckboxOn == false ? "chekbox is not checked" : "chekbox is checked",
    style: TextStyle(
      fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    Checkbox(value: isCheckboxOn, onChanged: (value){
      toggleCheckbox();
    },),

    
          ],
        ),
      ),
    );
  }
}