import 'package:ambition/Largest/page/largest_page.dart';
import 'package:ambition/Question/reusable_widget/question_template.dart';
import 'package:flutter/material.dart';

class PrintFruitsPage extends StatelessWidget {
  const PrintFruitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      appbarTitle: "Display Fruits Using Loop",
      questionText:
          "Question:Create a list of fruits and print each fruit using a loop.",
      imagePath: "assets/images/fruits.png",
      outputImagePath: "assets/images/output_fruits.png",
      nextPage: LargestPage(),
    );
  }
}
