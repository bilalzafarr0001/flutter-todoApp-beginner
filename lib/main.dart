import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TODO APPLICATION',   
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

 