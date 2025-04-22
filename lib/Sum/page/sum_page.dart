import 'package:ambition/Loops/page/loop_page.dart';
import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:flutter/material.dart';

class SumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Sum Page",
      questionText:
          "Question:Create a function that calculates the sum of two numbers",
      imagePath: "assets/images/sum.png",
      outputImagePath: "assets/images/totalsum.png",
      nextPage: LoopPage(),
    );
  }
}
