import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  Widget _google() {
    return OutlinedButton.icon(
      onPressed: () {
        // Add your logic here
      },
      icon: const Icon(Icons.facebook), // The icon to be displayed
      label: const Text("Google",style:TextStyle(color:Colors.black)),    // The text to be displayed
      style: OutlinedButton.styleFrom(
        foregroundColor:Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        fixedSize: Size(double.infinity,30),
      ),
    );
  }
  Widget _facebook() {
    return OutlinedButton.icon(
      onPressed: () {
        // Add your logic here
      },
      icon: const Icon(Icons.facebook),
      label: const Text("Facebook",style:TextStyle(color:Colors.black)),
      style: OutlinedButton.styleFrom(
        foregroundColor:Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ), fixedSize: Size(double.infinity,30),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 110,
                  height: 60,
                  color: Colors.blue,
                )
              ],
            ),
            Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Text("Sign in to your account"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _google(),
                    const SizedBox(width: 10),
                    _facebook(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
