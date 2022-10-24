import 'package:flutter/material.dart';
import 'package:weather/weather/presentation/views/weather_view.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherView(),
    );
  }
}
