import 'package:ambition/EvenOdd/page/even_odd_page.dart';
import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:flutter/material.dart';

class CountryNamePage extends StatelessWidget {
  const CountryNamePage({super.key});
  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Map of Country Names",
      questionText:
          "Question:Create a map of country names and their populations, and print all values.",
      imagePath: "assets/images/country_names.png",
      outputImagePath: "assets/images/output_country.png",
      nextPage: EvenOddPage(),
    );
  }
}
