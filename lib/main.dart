import 'package:flutter/material.dart';
import 'package:merokhet/screens/auth/consumer_registration.dart';
import 'package:merokhet/screens/auth/farmer_auth/questionnaire_3.dart';
import 'package:merokhet/screens/auth/farmer_auth/questionnaire_4.dart';
import 'package:merokhet/screens/auth/login_page.dart';
import 'package:merokhet/screens/flashing_page.dart';
import 'package:merokhet/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mero Khet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FlashingPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/consumer_registration': (context) => const ConsumerRegistration(),
        '/qna3': (context) => const Questionnaire3(),
        '/qna4': (context) => const Questionnaire4(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
