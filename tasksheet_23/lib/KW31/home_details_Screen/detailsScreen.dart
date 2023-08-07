// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  
  

  @override
  Widget build(BuildContext context) {
    // Aufgabe 3: Parameterübergabe
    String productName = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
        },
        label: const Text('Like'),
        icon: const Icon(Icons.thumb_up_alt_sharp),
        backgroundColor: Colors.purple,
        ), 
      appBar: AppBar(
        title: const Text('DetailsScreen')),
      body: 
      
     Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           const Image(image: AssetImage('assets/images/Mood.jpg')),
            const SizedBox(height: 30),
        Text('Selected Product: $productName'),
        
          ],
        ),
      ),
    );
  }
}

