import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        left: 50,
      ), // Add margin for spacing
      child: const Image(
        image: AssetImage('assets/meroKhetLogo.png'),
        fit: BoxFit.cover,
        width: 180,
        height: 80,
      ),
    );
  }
}
