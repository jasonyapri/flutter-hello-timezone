import 'package:flutter/material.dart';
import 'package:hello_timezone/pages/home.dart';
import 'package:hello_timezone/pages/loading.dart';
import 'package:hello_timezone/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  // home: Home(),
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(), // Default Initial Route, except specified
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
}
));

