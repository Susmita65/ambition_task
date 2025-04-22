import 'package:ambition/PrintFruits/page/print_fruits_page.dart';
import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:flutter/material.dart';

class PositiveNegativePage extends StatelessWidget {
  const PositiveNegativePage({super.key});

  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Positive Negative Page",
      questionText:
          "Question:Write a function that returns whether a number is positive, negative or zero.",
      imagePath: "assets/images/positive_negative.png",
      outputImagePath: "assets/images/output_posneg.png",
      nextPage: PrintFruitsPage(),
    );
  }
}
