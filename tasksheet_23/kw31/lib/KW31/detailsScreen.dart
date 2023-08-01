// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Aufgabe 3: Parameterübergabe
    String productName = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsScreen')),
      body: Center(
        child: Text('Selected Product: $productName'),
      ),
    );
  }
}
