import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/ dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coaching Dashboard',
      theme: ThemeData(
        primaryColor: const Color(0xFF4E33A3),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const DashboardScreen(),
    );
  }
}
