import 'package:flutter/material.dart';
import 'package:merokhet/screens/auth/consumer_registration.dart';
import 'package:merokhet/screens/auth/farmer_auth/farmer_registration_page.dart';
import 'package:merokhet/screens/auth/farmer_auth/farmer_verification_page.dart';
import 'package:merokhet/screens/auth/farmer_auth/questionnaire_3.dart';
import 'package:merokhet/screens/auth/farmer_auth/questionnaire_4.dart';
import 'package:merokhet/screens/auth/login_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FarmerVerificationPage(),
      routes: {
        '/login': (context) =>const LoginPage(),
        '/consumer_registration': (context) =>const ConsumerRegistration(),
        '/qna3': (context) =>const Questionnaire3(),
        '/qna4': (context) =>const Questionnaire4(),
        '/home': (context) =>const HomePage(),
        '/farmer_register':(context)=>const FarmerRegistrationPage()

      },
    );
  }
}
