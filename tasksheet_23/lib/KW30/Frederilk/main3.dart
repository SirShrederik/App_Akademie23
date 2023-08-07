import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(CrosswordApp());
}

class CrosswordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CrosswordGenerator(),
    );
  }
}

class CrosswordGenerator extends StatefulWidget {
  @override
  _CrosswordGeneratorState createState() => _CrosswordGeneratorState();
}

class _CrosswordGeneratorState extends State<CrosswordGenerator> {
  final int crosswordSize = 8; // Größe des Kreuzworträtsels
  final List<String> letters = List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  String generatedPassword = '';

  void generatePassword() {
    setState(() {
      generatedPassword = _generateRandomPassword();
    });
  }

  String _generateRandomPassword() {
    String password = '';
    final Random random = Random();

    for (int i = 0; i < crosswordSize; i++) {
      password += letters[random.nextInt(letters.length)];
    }

    return password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passwort Kreuzworträtsel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crosswordSize,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              shrinkWrap: true,
              itemCount: crosswordSize * crosswordSize,
              itemBuilder: (context, index) {
                final int row = index ~/ crosswordSize;
                final int col = index % crosswordSize;
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    generatedPassword.isNotEmpty ? (col == 0 ? letters[row] : generatedPassword[col - 1]) : '',
                    style: TextStyle(fontSize: 20.0),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: generatePassword,
              child: Text('Generiere ein zufälliges Passwort'),
            ),
          ],
        ),
      ),
    );
  }
}
