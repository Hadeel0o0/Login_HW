import 'package:flutter/material.dart';
import 'package:login_project/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplachScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
