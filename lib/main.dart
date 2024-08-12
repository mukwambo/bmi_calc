import 'package:bmi_calc/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* This is the overall theme of the app. We overrode the dark theme then made custom changes using the
      copyWith() method*/
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0A0E21)),
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          foregroundColor: Color(0xFFEFEFEF),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      // Remove the debug banner displayed on the far right corner of the emulator
      debugShowCheckedModeBanner: false,
      home: const InputPage(),

      // Named routes are a simpler way of navigating between screens
      routes: {'/resultsPage': (context) => const ResultsPage()},
    );
  }
}
