import 'package:flutter/material.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/custom_next_button.dart';
import 'package:merokhet/widgets/QuestionnaireLayouts/questionnaire_header.dart';
import 'package:merokhet/widgets/custom_file_upload_btn.dart';
import 'package:merokhet/widgets/custom_text_field.dart';

class FarmerVerificationPage extends StatefulWidget {
  const FarmerVerificationPage({super.key});

  @override
  State<FarmerVerificationPage> createState() => _FarmerVerificationPageState();
}

class _FarmerVerificationPageState extends State<FarmerVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: // Make the entire page scrollable
            Container(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
          width: double.infinity,
           child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Align children at the start
            children: [
              QuestionnaireHeader(
                onPressed: () {
                  Navigator.pushNamed(context, 'farmer_register');
                },
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) {
                            double screenWidth = constraints.maxWidth;
                            return Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Farm Verification",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Please provide the necessary business details to complete your registration. This information will help verify your business and ensure compliance with regulations.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const CustomTextField(
                        label: "Farm account name", hintText: "Farm name"),
                    const SizedBox(height: 15),
                    CustomFileUpload(
                      upload: "Upload farmer license",
                      labelText:
                          "Upload your valid farmer license to verify your farming operations.",
                      onPressed: () {},
                      label: "Farmer License",
                    ),
                    const SizedBox(height: 15),
                    CustomFileUpload(
                      upload: "Upload food safety license",
                      labelText:
                          "Upload your food safety certification to ensure compliance with safety standards.",
                      onPressed: () {},
                      label: "Food Safety License",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Buttons Section
             Column(
               children: [
                 CustomNextButton(
                   text: "Continue",
                   onPressed: () {
                     Navigator.pushNamed(context, '/qna4');
                   },
                   buttonColor: const Color(0xFF4B6F39),
                 ),
                 const SizedBox(height: 10),
                 CustomNextButton(
                   text: "Back",
                   onPressed: () {
                     Navigator.pushNamed(context, '/home');
                   },
                   buttonColor: const Color(0xFF4B6F39),
                 ),
               ],
             )

            ],
          ),
        ),
      ),
    );
  }
}
