import 'package:flutter/material.dart';
import 'package:weather/app.dart';
import 'package:weather/core/dependencies.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const WeatherApp());
}
