import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0A0E21)),
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          foregroundColor: Color(0xFFEFEFEF),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}
