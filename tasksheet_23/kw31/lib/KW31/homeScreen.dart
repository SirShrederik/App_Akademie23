// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> products = [
    'Produkt 1',
    'Produkt 2',
    'Produkt 3',
    'Produkt 4'
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
          title: Text('HomeScreen', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: 'Hallo du Schlumpf',
                );
              },
            ),
          ]),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.smartphone),
              title: Text(products[index]),
              onTap: () {
                // Aufgabe 2: Navigation zum "DetailsScreen"
                Navigator.pushNamed(context, '/details',
                    arguments: products[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
