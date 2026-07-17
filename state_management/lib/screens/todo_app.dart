import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> fruits = [];

  final TextEditingController fruitsController = TextEditingController();

  bool isLoading = false;

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

void deleteFruit(int index) async {
  setState(() {
    isLoading = true;
  });
  await Future.delayed(Duration(seconds: 1));
  setState(() {
    isLoading = false;
    fruits.removeAt(index);
  });
}

  void clearAll() {
    setState(() {
      fruits.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo app', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
        actions: [
          TextButton(
            onPressed: clearAll,
            child: Text("Clear", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
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
          
                  fruits.isEmpty
                      ? Container(
                          margin: EdgeInsets.only(top: 100),
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.adjust_sharp, size: 120),
                              SizedBox(height: 10),
                              Text(
                                "No fruit has been added yet",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 20),
                            itemCount: fruits.length,
                            itemBuilder: (context, index) {
                              final myFruit = fruits[index];
                              return Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 12,
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: AlignmentGeometry.centerLeft,
                                      child: Text(
                                        myFruit,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Align(
                                      alignment: AlignmentGeometry.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          deleteFruit(index);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ),
           isLoading == true
                                          ? Center(child: CircularProgressIndicator())
                                          : SizedBox.shrink()
        ],
      ),
    );
  }
}
