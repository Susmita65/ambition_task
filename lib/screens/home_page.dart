import 'package:ambition/screens/question_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to Questions App",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QuestionTemplate()),
            );
          },
          child: Text(
            "Start Questions Here!",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
