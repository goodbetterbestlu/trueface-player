import 'package:flutter/material.dart';
import 'package:trueface_player/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TRUE FACE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF050608),
        primaryColor: const Color(0xFF5B8CFF),
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Color(0xFF5B8CFF),
          secondary: Color(0xFF9B6BFF),
        ),
      ),
      home: const HomePage(),
    );
  }
}
