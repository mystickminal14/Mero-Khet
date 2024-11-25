import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  const CustomNextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        minimumSize: const WidgetStatePropertyAll(
          Size(double.infinity, 50),
        ),
        backgroundColor: WidgetStatePropertyAll(buttonColor),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
