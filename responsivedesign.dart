import 'package:flutter/material.dart';

void main() {
  runApp(const Responsive());
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Responsive Design'),
      ),
      body: LayoutBuilder(builder: (context,contraints){

        if(contraints.maxWidth<600){
//modile
        }
        else if(contraints.maxWidth<900){
          //tablet
        }
        else{//large screen}
        }

        return Center(
        child: FractionallySizedBox(
          // heightFactor: 0.3,
          // widthFactor: 0.3,
          child: AspectRatio(
            aspectRatio: 16 / 13,
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'This is a container with 16:13 aspect ratio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        
    );
  
      }),
    );
  }}