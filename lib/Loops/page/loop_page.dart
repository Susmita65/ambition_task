import 'package:ambition/PositiveNegative/page/positive_negative_page.dart';
import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:flutter/material.dart';

class LoopPage extends StatelessWidget {
  const LoopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Loop Page",
      questionText: "Question:Create a loop to print numbers from 1 to 10.",
      imagePath: "assets/images/loop.png",
      outputImagePath: "assets/images/outputloop.png",
      nextPage: PositiveNegativePage(),
    );
  }
}
