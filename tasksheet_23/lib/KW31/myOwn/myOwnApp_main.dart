// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class MyOwnApp extends StatelessWidget {
  const MyOwnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Own Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyOwnPage(title: 'Home'),
    );
  }
}

class Heinrichs {
  String name;
  int age;

  Heinrichs({required this.name, required this.age});
}

class MyOwnPage extends StatelessWidget {
 List<Heinrichs> heinis = [
    Heinrichs(name: 'Amedeo', age: 28),
    Heinrichs(name: 'Atanas', age: 24),
     Heinrichs(name: 'Hanna', age: 29),
      Heinrichs(name: 'Ben', age: 30),
        ];

 MyOwnPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 91, 86, 40),
      ),
      body: ListView.builder(
          itemCount: heinis.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                
              },
              leading: const Icon(Icons.add_alarm_rounded),
              subtitle: const Text('Kokolores'),
              trailing: Text('${heinis[index].age}'),
              title: Text(heinis[index].name),
            );
          }),
    );
  }
}
