import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  final border = const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: Colors.black,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)));

  Widget _google() {
    return OutlinedButton.icon(
      onPressed: () {
        // Add your logic here
      },
      icon: const Icon(Icons.facebook), // The icon to be displayed
      label: const Text("Google",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'poppins',
              fontSize: 12,
              fontWeight: FontWeight.w400)), // The text to be displayed
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        fixedSize: const Size(150, 32),
      ),
    );
  }

  Widget _facebook() {
    return OutlinedButton.icon(
      onPressed: () {
        // Add your logic here
      },
      icon: const Icon(Icons.facebook),
      label: const Text("Facebook",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'poppins',
              fontSize: 12,
              fontWeight: FontWeight.w400)),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        fixedSize: const Size(150, 32),
      ),
    );
  }

  Widget _emailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email or Phone",
          style: TextStyle(
              fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 5),
        TextField(
          style: const TextStyle(
              fontFamily: 'poppins', fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            hintText: "Enter email or phone number",
            hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: border,
            focusedBorder: border,
          ),
        )
      ],
    );
  }

  Widget _passwordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Password",
          style: TextStyle(
              fontSize: 14, fontFamily: 'poppins', fontWeight: FontWeight.w400),
        ),
        TextField(
          style: const TextStyle(
              fontFamily: 'poppins', fontWeight: FontWeight.w400),
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            filled: true,
            suffixIcon: const Icon(Icons.password_rounded),
            fillColor: Colors.white,
            enabledBorder: border,
            focusedBorder: border,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // margin: const EdgeInsets.only(top: 20, left: 16), // Add margin for spacing
              child: const Image(
                image: AssetImage('assets/meroKhetLogo.png'),
                fit: BoxFit.cover,
                width: 220,
                height: 100,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),


                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 34,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      const Text("Sign in to your account",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _google(),
                          const SizedBox(width: 10),
                          _facebook(),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(top: 0, left: 28, right: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: _emailField(),
                        ),
                        const SizedBox(height: 14),
                        Container(child: _passwordField())
                      ],
                    )),
                Text("hi there"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
