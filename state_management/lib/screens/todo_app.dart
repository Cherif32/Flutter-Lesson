import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> fruits = [];

  final TextEditingController fruitsController = TextEditingController();

  void addFruits() {
    String fruit = fruitsController.text.trim();

    if (fruit.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Please enter a fruit name")));
      return;
    }
    setState(() {
      fruits.add(fruit);
    });
    fruitsController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo app', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: fruitsController,
                      decoration: InputDecoration(hintText: "Enter fruits"),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: addFruits,
                    child: Text("Add Fruits"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemCount: fruits.length,
                  itemBuilder: (context, index) {
                    final myFruit = fruits[index];
                    return Text(
                      myFruit,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
