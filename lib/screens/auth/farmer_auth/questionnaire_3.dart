import 'package:flutter/material.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/CustomCheckBox.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/custom_next_button.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/questionnaire_header.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/questions.dart';
import 'package:merokhet/widgets/logo_widgets.dart';

class Questionnaire3 extends StatelessWidget {
  const Questionnaire3({super.key});

  final ans =
      "Please select the type of products you plan to offer. This helps us categorize your business and showcase it to the right customers";
  final title = "Product Focus";
  final qna = "What products will you primarily focus on selling?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 15,bottom:10),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                QuestionnaireHeader(
                  onPressed: () {
                    Navigator.pushNamed(context, '/qna3');
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Questions(
                      title: title,
                      question: qna,
                      ans: ans,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomCheckbox(
                      title: 'Fresh Vegetables',
                      icon: Icons.grain,
                      initialValue: false,
                      onChanged: (bool? value) {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomCheckbox(
                      title: 'Fresh Fruits',
                      icon: Icons.local_florist,
                      initialValue: false,
                      onChanged: (bool? value) {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomCheckbox(
                      title: 'Dairy Products',
                      icon: Icons.local_drink,
                      initialValue: false,
                      onChanged: (bool? value) {},
                    ),

                  ],
                ),
              ],
            ),
              Column(
                children: [
                  CustomNextButton(
                      text: "Continue",
                      onPressed: () {
                        Navigator.pushNamed(context, '/qna4');
                      },
                      buttonColor: const Color(0xFF4B6F39)),
                  const SizedBox(height: 10),
                  CustomNextButton(
                      text: "Back",
                      onPressed: () {
                        Navigator.pushNamed(context, '/qna3');

                      },
                      buttonColor: const Color(0xFF4B6F39))
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}