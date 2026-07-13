import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/quote_page.dart';

void main() {
  runApp(const CustomPackagingApp());
}

class CustomPackagingApp extends StatelessWidget {
  const CustomPackagingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProBox Packaging',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32), // A green color indicating eco-friendly
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/quote': (context) => const QuotePage(),
      },
    );
  }
}
