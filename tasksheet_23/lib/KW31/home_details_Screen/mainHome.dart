
import 'package:flutter/material.dart';

import 'detailsScreen.dart';
import 'homeScreen.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Aufgabe 1: Registrierung von Named Routes
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => const DetailsScreen(),
      },
      // Aufgabe 1: Startseite der App festlegen
      initialRoute: '/',
     
    );
  }
}
