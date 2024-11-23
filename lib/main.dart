import 'package:flutter/material.dart';
import 'package:merokhet/screens/auth/consumer_registration.dart';
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
      home: const HomePage(),
      routes: {
        '/login': (context) =>const LoginPage(),
        '/consumer_registration': (context) =>const ConsumerRegistration(),

      },
    );
  }
}
