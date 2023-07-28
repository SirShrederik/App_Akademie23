import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App - Stateful"),
      ),
      body: Center(
        child: CounterWidgetStateful(),
      ),
    );
  }
}

class CounterWidgetStateful extends StatefulWidget {
  @override
  _CounterWidgetStatefulState createState() => _CounterWidgetStatefulState();
}

class _CounterWidgetStatefulState extends State<CounterWidgetStateful> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Counter: $_counter",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Erhöhen"),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: _resetCounter,
              child: Text("Zurücksetzen"),
            ),
          ],
        ),
      ],
    );
  }
}
