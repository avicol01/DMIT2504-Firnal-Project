// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:robbinlaw/cardio.dart';
import 'package:robbinlaw/first-page.dart';
import 'package:robbinlaw/themes/theme.dart';
//import 'package:robbinlaw/first-page.dart';
import 'package:robbinlaw/weight.dart';

void main() => runApp(MyApp());

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      title: 'Project - Andreea Vicol',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      theme: buildTheme(),
    );
  }
}
