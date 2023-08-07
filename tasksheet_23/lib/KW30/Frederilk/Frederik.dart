import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  String outputText = "";

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void generateOutputText() {
    setState(() {      
    outputText = "My name is ObiWan and may the force be with you!";
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey, 
          title: Text('Which Side of force are you?'),
        ),
        backgroundColor: Colors.black38, 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter: $counter $outputText',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  generateOutputText();
                  print(outputText);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, // Blauer Button
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text(
                  "What's your name?",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: incrementCounter,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Blauer Button
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text(
                  'Count Name',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
