import 'package:flutter/material.dart';

class QuestionTemplate extends StatefulWidget {
  final String appbarTitle;
  final String questionText;
  final String imagePath;
  final String outputImagePath;
  final Widget nextPage;

  QuestionTemplate({
    super.key,
    required this.appbarTitle,
    required this.questionText,
    required this.imagePath,
    required this.outputImagePath,
    required this.nextPage,
  });

  @override
  State<QuestionTemplate> createState() => _QuestionTemplateState();
}

class _QuestionTemplateState extends State<QuestionTemplate> {
  bool showImage = false;
  bool showOutput = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.appbarTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Question:${widget.questionText}",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showImage = true;
                  showOutput = true;
                });
              },
              child: Text("Run"),
            ),
            const SizedBox(height: 10),
            //Show Image when user clicks on it
            if (showImage)
              Image.asset(
                widget.imagePath,
                height: 250,
                width: 250,
                fit: BoxFit.contain,
              ),
            Text("OUTPUT:"),
            //show output
            if (showOutput)
              Image.asset(widget.outputImagePath, height: 50, width: 50),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget.nextPage),
                );
              },
              child: const Text("Go to Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}
