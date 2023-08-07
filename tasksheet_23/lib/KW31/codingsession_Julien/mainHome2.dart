// ignore_for_file: unused_import

import 'settings_page.dart';
import 'push_settings_page.dart';
import 'package:flutter/material.dart';
import 'profilPage.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home'),
      // TODO: initialRoute und routes auskommentieren, falls
      // ihr named routes nutzen wollt

      // initialRoute: '/home',
      // routes: {
      //   '/home': (context) => const MyHomePage(title: 'Home'),
      //   '/settings': (context) => const SettingsPage(),
      //   '/settings/pushes': (context) => const PushSettingsPage(),
      // },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hallo, Julien!',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(height: size.height * 0.28),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => const SettingsPage(),
                    ),
                  );
                },
                child: const Text(
                  'Einstellungen',
                ),
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contex) => ProfilePage()),);
                },
                child: const Text(
                  'Profil',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
