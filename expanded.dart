import 'package:flutter/material.dart';

void main() {
  runApp(const Expandedone());
}

class Expandedone extends StatelessWidget {
  const Expandedone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expanded Widget",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const Expanded_home(),
    );
  }
}

class Expanded_home extends StatelessWidget {
  const Expanded_home({super.key});

  @override
  Widget build(BuildContext context) {

    // MediaQuery দিয়ে screen-এর width ও height নেওয়া
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
      ),

      body: Column(
        children: [

          Expanded(
            flex: 2,
            child: Container(
              width: screenWidth,
              color: Colors.amber,
              child: const Center(
                child: Text("Item 1"),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              width: screenWidth,
              color: const Color.fromARGB(255, 23, 7, 255),
              child: const Center(
                child: Text(
                  "Item 2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              width: screenWidth,
              color: const Color.fromARGB(255, 7, 255, 11),
              child: const Center(
                child: Text("Item 3"),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Container(
              width: screenWidth,
              color: const Color.fromARGB(255, 255, 131, 7),
              child: const Center(
                child: Text("Item 4"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}