import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:ambition/Sum/page/sum_page.dart';
import 'package:flutter/material.dart';

class EvenOddPage extends StatelessWidget {
  const EvenOddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Even or Odd Page",
      questionText:
          "Question:Write a Dart program to check if a number is even or odd.",
      imagePath: "assets/images/even_odd.png",
      outputImagePath: "assets/images/output_evenodd.png",
      nextPage: SumPage(),
    );
  }
}
