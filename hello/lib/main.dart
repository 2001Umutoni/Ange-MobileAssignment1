import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Application Hello World'),
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: const Text(
              'Hello World!!!!',//content to be displayed in the center of the screen
              style: TextStyle(
                color: Color.fromARGB(255, 243, 33, 33), 
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
