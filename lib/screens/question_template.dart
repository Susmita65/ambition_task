import 'package:ambition/question/provider/question_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionTemplate extends StatefulWidget {
  const QuestionTemplate({super.key});

  @override
  State<QuestionTemplate> createState() => _QuestionTemplateState();
}

class _QuestionTemplateState extends State<QuestionTemplate> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuestionProvider>(context);
    final question = provider.currentQuestion;
    return Scaffold(
      appBar: AppBar(title: Text(question.appBarTitle)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(question.questionText, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: provider.run, child: Text("Run")),
            const SizedBox(height: 10),
            if (provider.showImage)
              Image.asset(
                question.imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            const SizedBox(height: 10),
            Text(
              "OUTPUT:",
              style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
            ),
            if (provider.showOutput)
              Image.asset(
                question.outputImagePath,
                height: 100,
                width: double.infinity,
                fit: BoxFit.contain,
              ),

            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                provider.reset();
                provider.showNextQuestion();
              },
              child: const Text("Go to Next Question"),
            ),
          ],
        ),
      ),
    );
  }
}
