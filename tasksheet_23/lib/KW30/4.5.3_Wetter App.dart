import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  final WeatherData weatherData = WeatherData(
    city: "Berlin",
    temperature: 25.0,
    weatherCondition: "Es ist sonnig!",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wetter-App"),
      ),
    

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Willkommen zu Ihrer Wetter-App Ihres Vertrauens",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                ),  
              ),
            
            SizedBox(height: 30),
            Text(
              "Aktuelles Wetter in ${weatherData.city}: ${weatherData.temperature}°C\nWetter: ${weatherData.weatherCondition}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherData {
  final String city;
  final double temperature;
  final String weatherCondition;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });
}
