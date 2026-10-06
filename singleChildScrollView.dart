import 'package:flutter/material.dart';

void main() {
  runApp(const Scroll());
}

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Single Child Scroll View",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 50, 12, 2),
        ),
        useMaterial3: true,
        // এখানে গ্লোবালি থিম ফিক্স করা হয়েছে যেন স্ক্রল করলে কালার না বদলায়
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent, // এটি কালার চেঞ্জ হওয়া বন্ধ করবে
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const View(),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Child Scroll View"),
        // AppBar-এর ব্যাকগ্রাউন্ড থিমের কালার অনুযায়ী ফিক্সড রাখতে নিচে এটি ব্যবহার করুন
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 1")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 2")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 3")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 3")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 4")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
            Container(alignment: Alignment.center, height: 30, child: const Text("Item 5")),
          ],
        ),
      ),
    );
  }
}
