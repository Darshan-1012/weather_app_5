import 'package:flutter/material.dart';
import 'package:weather_app_5/pages/choose_location.dart';
import 'package:weather_app_5/pages/home.dart';
import 'package:weather_app_5/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ),
  );
}
