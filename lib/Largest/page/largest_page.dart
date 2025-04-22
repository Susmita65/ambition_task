import 'package:ambition/CountryName/page/country_name_page.dart';
import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:flutter/material.dart';

class LargestPage extends StatelessWidget {
  const LargestPage({super.key});
  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Largest Number in a List",
      questionText:
          "Question:Write a function to find the largest number in a list.",
      imagePath: "assets/images/largest_value.png",
      outputImagePath: "assets/images/output_largest.png",
      nextPage: CountryNamePage(),
    );
  }
}
