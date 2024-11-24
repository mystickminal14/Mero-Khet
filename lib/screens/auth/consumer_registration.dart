import 'package:flutter/material.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/questionnaire_header.dart';
import 'package:merokhet/widgets/custom_button.dart';
import 'package:merokhet/widgets/custom_title.dart';
import 'package:merokhet/widgets/logo_widgets.dart';

class ConsumerRegistration extends StatelessWidget {
  const ConsumerRegistration({super.key});
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

  Widget _nameField() {
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
            hintText: "Email or Phone",
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

  Widget _phone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Phone Number",
          style: TextStyle(
              fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 5),
        TextField(
          style: const TextStyle(
              fontFamily: 'poppins', fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            hintText: "Phone Number",
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
              fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w400),
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
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            filled: true,
            suffixIcon: const Icon(Icons.visibility_off_rounded),
            fillColor: Colors.white,
            enabledBorder: border,
            focusedBorder: border,
          ),
        )
      ],
    );
  }

  //main app

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 18, right: 18),
              child: QuestionnaireHeader(onPressed: () {
                Navigator.pushNamed(context, '/home');
              }),
            ),

            //center
            Column(
              children: [
                const CustomTitle(
                  title: 'Join Us',
                  subTitle: 'Sign up with',
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _google(),
                    const SizedBox(width: 10),
                    _facebook(),
                  ],
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: _nameField(),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: _phone(),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: _emailField(),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: _passwordField(),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomButton(text: 'Register', onPressed: () {})
                      ],
                    )),
              ],
            ),
            //end of center
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
