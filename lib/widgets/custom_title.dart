import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title, subTitle;
  const CustomTitle({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,// Align content to the start
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 34,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 4, // Add spacing between the two Text widgets
        ),
         Container(
           // margin:const EdgeInsets.only(left:15),
           child:Text(
             subTitle,
             style: const TextStyle(
               fontFamily: 'Poppins',
               fontWeight: FontWeight.w400,
             ),
           ),
         )
      ],
    );
  }
}