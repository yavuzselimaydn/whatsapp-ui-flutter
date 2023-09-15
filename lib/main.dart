import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF128C7E, {
            50: Color(0xFFE0F2F0),
            100: Color(0xFFB3DDD3),
            200: Color(0xFF80C7B8),
            300: Color(0xFF4DAF9D),
            400: Color(0xFF269F88),
            500: Color(0xFF128C7E),
            600: Color(0xFF108378),
            700: Color(0xFF0D716E),
            800: Color(0xFF0A5F63),
            900: Color(0xFF03413E),
          }),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomePage(),
    );
  }
}
