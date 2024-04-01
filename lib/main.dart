import 'package:flutter/material.dart';
import 'package:project_5/screens/app_screen.dart';

void main() {
  runApp(const SimpleGamesPackApp());
}

class SimpleGamesPackApp extends StatelessWidget {
  const SimpleGamesPackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Color(0xff242C1F),
      debugShowCheckedModeBanner: false,
      home: AppScreen(),
    );
  }
}
