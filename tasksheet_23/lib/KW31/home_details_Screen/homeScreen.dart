// ignore_for_file: file_names

import 'package:flutter/material.dart';
// import 'package:KW31/homeScreen.dart';

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
      backgroundColor: Color.fromARGB(255, 237, 224, 166),
      appBar: AppBar(
          title: const Text('HomeScreen', style: TextStyle(color: Color.fromRGBO(255, 103, 57, 0.817))),
          backgroundColor: Color.fromARGB(255, 55, 19, 82),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            // IconButton(
            //   icon: const Icon(Icons.navigate_next),
            //   tooltip: 'Go to the next page',
            //   onPressed: () {
            //     Navigator.pushNamed(
            //       context,
            //       '/details',
            //       arguments: 'Hallo du Schlumpf',
            //     );
            //   },
            // ),
          ]),
      body: 
     // Image(image: AssetImage('assets/images/hourglas.jpg')),
      
      ListView.builder(
        
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


