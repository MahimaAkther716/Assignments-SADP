import 'package:firstassignment/convertscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(TemperatureConverterApp());

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Celsius to Fahrenheit',
      home: TemperatureConverter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
